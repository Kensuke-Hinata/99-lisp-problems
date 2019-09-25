import std.stdio, std.string;

class XD(T)
{
    protected XD[] children;
    protected T val;

    this(T val)
    {
        this.val = val;
    }

    public void addChild(XD child)
    {
        children ~= child;
    }
}

T[] flatten(T)(XD!T xd)
{
    if (xd.val != T.min) return [xd.val];
    T[] res;
    foreach (child; xd.children)
    {
        auto ret = flatten(child);
        foreach (v; ret) res ~= v;
    }
    return res;
}

int main(string[] args)
{
    auto f = new XD!int(1);
    auto sf = new XD!int(2);
    auto ss = new XD!int(3);
    auto t = new XD!int(4);
    auto s = new XD!int(int.min);
    s.addChild(sf);
    s.addChild(ss);
    auto r = new XD!int(int.min);
    r.addChild(f);
    r.addChild(s);
    r.addChild(t);
    assert(flatten!int(r) == [1, 2, 3, 4]);
    return 0;
}

import std.stdio, std.string;

T[] elementAt(T)(T[] a, int k)
{
    if (k <= 0 || k > a.length) return null;
    return a[k - 1 .. k];
}

int main(string[] args)
{
    auto a = [1, 2, 3, 4];
    assert(elementAt!int(a, 4) == [4]);
    return 0;
}

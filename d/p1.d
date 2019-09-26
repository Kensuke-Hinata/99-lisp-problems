import std.stdio, std.string;

T[] myLast(T)(T[] a)
{
    if (a.length == 0) return null;
    return a[$ - 1 .. $];
}

int main(string[] args)
{
    auto a = [1, 2, 3, 4];
    assert(myLast!int(a) == [4]);
    return 0;
}

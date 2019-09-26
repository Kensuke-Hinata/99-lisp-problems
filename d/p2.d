import std.stdio, std.string;

T[] myButLast(T)(T[] a)
{
    if (a.length < 2) return null;
    return a[$ - 2 .. $];
}

int main(string[] args)
{
    auto a = [1, 2, 3, 4];
    assert(myButLast!int(a) == [3, 4]);
    return 0;
}

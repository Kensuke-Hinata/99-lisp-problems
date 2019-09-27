import std.stdio, std.string;

T[] _compress(T)(T[] a, T prev)
{
    if (a.length == 0) return [];
    if (a[0] == prev) return _compress(a[1 .. $], a[0]);
    return [a[0]] ~ _compress(a[1 .. $], a[0]);
}

T[] compress(T)(T[] a)
{
    if (a.length == 0) return [];
    return [a[0]] ~ _compress(a[1 .. $], a[0]);
}

int main(string[] args)
{
    auto a = [1, 2, 2, 1, 1];
    assert(compress!int(a) == [1, 2, 1]);
    return 0;
}

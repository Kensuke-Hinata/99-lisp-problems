import std.stdio, std.string;

T[][] _split(T)(T[] a, T[] cur, int idx, int n)
{
    if (a.length == 0) return [cur];
    if (idx == n + 1) return [cur] ~ _split(a[1 .. $], [a[0]], idx + 1, n);
    return _split(a[1 .. $], cur ~ [a[0]], idx + 1, n);
}

T[][] split(T)(T[] a, int n)
{
    return _split(a, [], 1, n);
}

int main(string[] args)
{
    auto a = [1, 2, 3, 4, 5, 6];
    assert(split!int(a, 3) == [[1, 2, 3], [4, 5, 6]]);
    assert(split!int(a, 6) == [[1, 2, 3, 4, 5, 6]]);
    assert(split!int(a, 7) == [[1, 2, 3, 4, 5, 6]]);
    return 0;
}

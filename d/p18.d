import std.stdio, std.string;

T[] _slice(T)(T[] a, int idx, int left, int right)
{
    if (a.length == 0) return [];
    if (idx < left) return _slice(a[1 .. $], idx + 1, left, right);
    if (idx > right) return _slice(a[1 .. $], idx + 1, left, right);
    return [a[0]] ~ _slice(a[1 .. $], idx + 1, left, right);
}

T[] slice(T)(T[] a, int left, int right)
{
    return _slice(a, 1, left, right);
}

int main(string[] args)
{
    auto a = [1, 2, 3, 4, 5, 6];
    assert(slice!int(a, 3, 4) == [3, 4]);
    return 0;
}

import std.stdio, std.string;

T[] _removeAt(T)(T[] a, int idx, int n)
{
    if (a.length == 0) return [];
    if (idx == n) return _removeAt(a[1 .. $], idx + 1, n);
    return [a[0]] ~ _removeAt(a[1 .. $], idx + 1, n);
}

T[] removeAt(T)(T[] a, int n)
{
    return _removeAt(a, 1, n);
}

int main(string[] args)
{
    auto a = [1, 2, 3, 4, 5, 6];
    assert(removeAt!int(a, 3) == [1, 2, 4, 5, 6]);
    return 0;
}

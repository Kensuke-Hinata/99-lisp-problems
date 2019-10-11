import std.stdio, std.string;

T[] _insertAt(T)(T val, T[] a, int idx, int pos)
{
    if (a.length == 0) return [];
    if (idx == pos) return [val] ~ _insertAt(val, a, idx + 1, pos);
    return [a[0]] ~ _insertAt(val, a[1 .. $], idx + 1, pos);
}

T[] insertAt(T)(T val, T[] a, int pos)
{
    if (pos < 0) pos = 0;
    if (pos > a.length) pos = cast(int)a.length;
    return _insertAt(val, a, 1, pos);
}

int main(string[] args)
{
    auto a = [1, 2, 3, 4, 5, 6];
    assert(insertAt!int(0, a, 3) == [1, 2, 0, 3, 4, 5, 6]);
    return 0;
}

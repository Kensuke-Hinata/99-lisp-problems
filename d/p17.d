import std.stdio, std.string;

T[][] _split(T)(T[] a, int idx, int n)
{
    if (a.length == 0) return [[]];
}

T[][] split(T)(T[] a, int n)
{
    return _split(a, 1, n);
}

int main(string[] args)
{
    auto a = [1, 2, 3, 4, 5, 6];
    assert(split!int(a, 3) == [[1, 2, 3], [4, 5, 6]]);
    return 0;
}

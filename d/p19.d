import std.stdio, std.string;

T[] _rotate(T)(T[] a, int idx, int n)
{
    if (idx == a.length) return [];
    if (idx < a.length - n) return [a[idx + n]] ~ _rotate(a, idx + 1, n);
    return [a[idx - (a.length - n)]] ~ _rotate(a, idx + 1, n);
}

T[] rotate(T)(T[] a, int n)
{
    if (n < 0) return _rotate(a, 0, cast(int)((a.length + n) % a.length));
    return _rotate(a, 0, cast(int)(n % a.length));
}

int main(string[] args)
{
    auto a = [1, 2, 3, 4, 5, 6];
    assert(rotate!int(a, 3) == [4, 5, 6, 1, 2, 3]);
    return 0;
}

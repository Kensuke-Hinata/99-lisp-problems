import std.stdio, std.string;
import std.typecons;

T[] makeItems(T)(T val, int count)
{
    if (count == 0) return [];
    return [val] ~ makeItems(val, count - 1);
}

T[][] _pack(T)(T[] a, T prev, int count)
{
    if (a.length == 0) return [makeItems(prev, count)];
    if (a[0] != prev) return [makeItems(prev, count)] ~ _pack(a[1 .. $], a[0], 1);
    return _pack(a[1 .. $], prev, count + 1);
}

T[][] pack(T)(T[] a)
{
    if (a.length == 0) return [];
    return _pack(a[1 .. $], a[0], 1);
}

Tuple!(int, T)[] _encode(T)(T[][] a)
{
    if (a.length == 0) return [];
    return [tuple(cast(int)a[0].length, a[0][0])] ~ _encode(a[1 .. $]);
}

Tuple!(int, T)[] encode(T)(T[] a)
{
    if (a.length == 0) return [];
    return _encode(pack(a));
}

int main(string[] args)
{
    auto a = [1, 2, 2, 1, 1];
    assert(encode!int(a) == [tuple(1, 1), tuple(2, 2), tuple(2, 1)]);
    return 0;
}

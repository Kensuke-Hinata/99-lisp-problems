import std.stdio, std.string;

T[] reverse(T)(T[] a)
{
    if (a.length == 0) return [];
    return [a[$ - 1]] ~ reverse(a[0 .. $ - 1]);
}

int main(string[] args)
{
    auto a = [1, 2, 3, 4];
    assert(reverse!int(a) == [4, 3, 2, 1]);
    return 0;
}

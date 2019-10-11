import std.stdio, std.string;

T[] makeItems(T)(T val, int count)
{
    if (count == 0) return [];
    return [val] ~ makeItems(val, count - 1);
}

T[] repli(T)(T[] a, int count)
{
    if (a.length == 0) return [];
    return makeItems(a[0], count) ~ repli(a[1 .. $], count);
}

int main(string[] args)
{
    auto a = [1, 2];
    assert(repli!int(a, 3) == [1, 1, 1, 2, 2, 2]);
    return 0;
}

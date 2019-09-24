import std.stdio, std.string;

T len(T)(T[] a)
{
    if (a.length == 0) return 0;
    return len(a[1 .. $]) + 1;
}

int main(string[] args)
{
    auto a = [1, 2, 3, 4];
    assert(len!int(a) == 4);
    return 0;
}

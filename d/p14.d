import std.stdio, std.string;

T[] dupli(T)(T[] a)
{
    if (a.length == 0) return [];
    return [a[0], a[0]] ~ dupli(a[1 .. $]);
}

int main(string[] args)
{
    auto a = [1, 2];
    assert(dupli!int(a) == [1, 1, 2, 2]);
    return 0;
}

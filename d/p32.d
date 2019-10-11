import std.stdio, std.string;

T gcd(T)(T a, T b)
{
    if (a == 0) return b;
    return gcd(b % a, a);
}

int main(string[] args)
{
    assert(gcd!int(3, 5) == 1);
    assert(gcd!int(3, 6) == 3);
    return 0;
}

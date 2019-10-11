import std.stdio, std.string;

T gcd(T)(T a, T b)
{
    if (a == 0) return b;
    return gcd(b % a, a);
}

bool coprime(T)(T a, T b)
{
    return gcd(a, b) == 1 ? true : false;
}

int main(string[] args)
{
    assert(coprime!int(3, 5) == true);
    assert(coprime!int(3, 6) == false);
    return 0;
}

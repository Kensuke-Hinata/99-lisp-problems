import std.stdio, std.string;

T gcd(T)(T a, T b)
{
    if (a == 0) return b;
    return gcd(b % a, a);
}

long _totientPhi(T)(T cur, T num)
{
    if (cur == num) return 0;
    if (gcd(cur, num) == 1) return 1 + _totientPhi(cur + 1, num);
    return _totientPhi(cur + 1, num);
}

long totientPhi(T)(T num)
{
    if (num == 1) return 1;
    return _totientPhi(1, num);
}

int main(string[] args)
{
    assert(totientPhi!int(1) == 1);
    assert(totientPhi!int(10) == 4);
    return 0;
}

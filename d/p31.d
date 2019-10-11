import std.stdio, std.string;

bool _isPrime(T)(long cur, T num)
{
    if (cur * cur > num) return true;
    if (num % cur == 0) return false;
    return _isPrime(cur + 1, num);
}

bool isPrime(T)(T num)
{
    return _isPrime(cast(long)2, num);
}

int main(string[] args)
{
    assert(isPrime!int(3) == true);
    assert(isPrime!int(6) == false);
    return 0;
}

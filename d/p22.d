import std.stdio, std.string;
import std.algorithm;

T[] _range(T)(T cur, T left, T right)
{
    if (cur < min(left, right) || cur > max(left, right)) return [];
    if (left <= right) return [cur] ~ _range(cur + 1, left, right);
    return [cur] ~ _range(cur - 1, left, right);
}

T[] range(T)(T left, T right)
{
    return _range(left, left, right);
}

int main(string[] args)
{
    assert(range!int(0, 3) == [0, 1, 2, 3]);
    assert(range!int(3, 0) == [3, 2, 1, 0]);
    return 0;
}

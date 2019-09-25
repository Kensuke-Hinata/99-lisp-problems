import std.stdio, std.string;

bool isPalindrome(T)(T[] a)
{
    if (a.length == 0) return true;
    if (a[0] != a[$ - 1]) return false;
    return isPalindrome(a[1 .. $ - 1]);
}

int main(string[] args)
{
    auto a = [1, 2, 2, 1];
    assert(isPalindrome!int(a) == true);
    return 0;
}

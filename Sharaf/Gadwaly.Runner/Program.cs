using Gadwaly.Models;

string s1 = "Hello";
string? s2 = null;
string? s3 = "Sharaf";
string s4 = string.Empty;
object s5 = "   ";
string s6 = "    ";
dynamic s7 = "error";

Console.WriteLine("s1 = " + s1.Validate() + s1.Validate().IsValid);
Console.WriteLine("s2 = " + s2.Validate() + s2.Validate().IsValid);
Console.WriteLine("s3 = " + s3.Validate() + s3.Validate().IsValid);
Console.WriteLine("s4 = " + s4.Validate() + s4.Validate().IsValid);
Console.WriteLine("s5 = " + s5.Validate() + s5.Validate().IsValid);
Console.WriteLine("s6 = " + s6.Validate() + s6.Validate().IsValid);
Console.WriteLine("s7 = " + s7.Validate() + s7.Validate().IsValid);
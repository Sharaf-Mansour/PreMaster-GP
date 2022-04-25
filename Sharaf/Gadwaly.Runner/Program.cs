using Gadwaly.Models;
using Gadwaly.Service.StudentCreationService;
//string s1 = "Hello";
//string? s2 = null;
//string? s3 = "Sharaf";
//string s4 = string.Empty;
//object s5 = "   ";
//string s6 = "    ";
//dynamic s7 = "error";

//Console.WriteLine("s1 = " + s1.Validate() + s1.Validate().IsValid);
//Console.WriteLine("s2 = " + s2.Validate() + s2.Validate().IsValid);
//Console.WriteLine("s3 = " + s3.Validate() + s3.Validate().IsValid);
//Console.WriteLine("s4 = " + s4.Validate() + s4.Validate().IsValid);
//Console.WriteLine("s5 = " + s5.Validate() + s5.Validate().IsValid);
//Console.WriteLine("s6 = " + s6.Validate() + s6.Validate().IsValid);
//Console.WriteLine("s7 = " + (s7 as string).Validate() + (s7 as string).Validate().IsValid);

var StudentCreation = new StudentRegistrationService();

var x = await StudentCreation.CreateStudentAsync(new()
{
    NameArabic = "محمد",


});
Console.WriteLine(x);
//var Case1 = await StudentCreation.ApproveStudentsAsync(new IDList[] { });
//var Case2 = await StudentCreation.ApproveStudentsAsync(null);
//var Case3 = await StudentCreation.ApproveStudentsAsync(new IDList[]
//{


//    new IDList() { ID = Guid.Parse("152BAD32-2832-45A7-B4CA-70B611CBDB0C") },
//    new IDList() { ID = Guid.Parse("BF0F5385-285A-4E86-9899-70FFB9ACC9C0") }
//});
//var Case4 = await StudentCreation.ApproveStudentsAsync(new IDList[]
//{


//    new IDList() {ID = Guid.Parse("052BAD32-2832-45A7-B4CA-70B611CBDB0C")},
//    new IDList() {ID = Guid.Parse("BF0F5385-285A-4E86-9899-70FFB9ACC9C0")}
//});
//Console.WriteLine(Case1);
//Console.WriteLine(Case2);
//Console.WriteLine(Case3);
//Console.WriteLine(Case4);
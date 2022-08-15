namespace StudentPlus.Models;
public partial class StudentAccount : AccountLogin
{
    public string? Phone { get; set; }
    public string? ProfilePicture { get; set; }
    public string? FullNameEN { get; set; }
    public string? FullNameArabic { get; set; }
    public int? Gender { get; set; }
    public int? Country { get; set; }
    public string? City { get; set; }
    public string? Address { get; set; }
    public string? ZipCode { get; set; }
    public int? Nationality { get; set; }
    public string? NID { get; set; }
    public string? Passport { get; set; }
    public DateTime? Birthday { get; set; }
    public string? PassportImg { get; set; }
    public string? NIDImage { get; set; }
    public string? BirthCImg { get; set; }
    public string? BCImg { get; set; }
    public string? DCImg { get; set; }
    public string? MCImg { get; set; }
    public string? PhdCimg { get; set; }
    public string? LastQual { get; set; }
    public string? ConfirmPassword { get; set; }
    public bool PrivacyCheck { get; set; }
    public async ValueTask<bool> IsValidAsync() => (await new StudentAccountValidator().ValidateAsync(this)).IsValid;
}
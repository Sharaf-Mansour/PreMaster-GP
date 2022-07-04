namespace StudentPlus.Models;
public partial class StudentAccount : AccountLogin
{
    public string? Phone { get; set; }
    public string? ConfirmPassword { get; set; }
    public bool PrivacyCheck { get; set; }
    public async ValueTask<bool> IsValidAsync() => (await new StudentAccountValidator().ValidateAsync(this)).IsValid;

}
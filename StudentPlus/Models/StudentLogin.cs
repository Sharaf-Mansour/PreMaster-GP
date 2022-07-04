using HappyCRUD;
namespace StudentPlus.Models;
public partial class StudentLogin : StudentId
{
    public string? Email { get; set; }
    public string? Password { get; set; }
    public bool InEditState { get; set; }
    public async ValueTask<bool> IsValidAsync() => (await new StudentLoginValidator().ValidateAsync(this)).IsValid;
}

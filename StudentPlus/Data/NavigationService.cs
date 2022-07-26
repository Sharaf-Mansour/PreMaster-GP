namespace StudentPlus.Data;
public class NavigationService
{
    public string? Page { get; set; }
    public StudentAccount Model { get; set; }
    public bool StayLoggedin { get; set; }
    public bool IsLoggedIn { get; set; } = false;
    public AccountType AccountType { get; set; } = AccountType.Student;
    public event Action? OnChange;
    public void NotifyStateChanged() => OnChange?.Invoke();
}
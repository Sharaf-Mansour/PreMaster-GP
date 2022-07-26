namespace StudentPlus.Api.Brokers.Storages;
public partial interface IStorageBroker
{
    public ValueTask<bool> SelectUserAccountByEmailAsync(string Email);
    public ValueTask<StudentAccount> SelectFullUserAccountByEmailAsync(string Email);
    public ValueTask<(bool IsLoggedin, int ID)> SelectUserAccountByEmailAndPasswordAsync(string Email, string Password);
    public ValueTask<int> InsertStudentAccountAsync(StudentAccount Model);


}
namespace StudentPlus.Api.Brokers.Storages;
public partial interface IStorageBroker
{
    public static string connectionString { get; set; }
    public ValueTask<bool> SelectUserAccountByEmailAsync(string Email);
    public ValueTask<StudentAccount> SelectFullUserAccountByEmailAsync(string Email);
    public ValueTask<List<Programs>> SelectProgramAsync();
    public ValueTask<List<ProgramsCourses>> SelectProgramsCoursesAsync(int ProgramID);
    public ValueTask<(bool IsLoggedin, int ID)> SelectUserAccountByEmailAndPasswordAsync(string Email, string Password);
    public ValueTask<int> InsertStudentAccountAsync(StudentAccount Model);
    public ValueTask<int> UpdateStudentProfileAsync(StudentAccount StudentAccount);
    public ValueTask<int> UpdateStudentPasswordAsync(int ID, string Password);
    public ValueTask<LookUpTable[]> SelectDataAsync(string TableName);


}
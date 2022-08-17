namespace StudentPlus.Api.Brokers.Storages;
public partial class StorageBroker : IStorageBroker
{
    public static string connectionString { get; set; }
    public IDbConnection Connection => new SqlConnection(connectionString);
    public async ValueTask<bool> SelectUserAccountByEmailAsync(string Email) => await Connection.QuerySingleOrDefaultAsync<bool>(sql: "SelectUserAccountByEmail", param: new { Email }, commandType: CommandType.StoredProcedure);
    public async ValueTask<(bool IsLoggedin, int ID)> SelectUserAccountByEmailAndPasswordAsync(string Email, string Password) => await Connection.QuerySingleOrDefaultAsync<(bool IsLoggedin, int ID)>(sql: "SelectUserAccountByEmailAndPassword", param: new { Email, Password }, commandType: CommandType.StoredProcedure);
    public async ValueTask<int> InsertStudentAccountAsync(StudentAccount Model) => await Connection.ExecuteAsync(sql: "InsertStudentAccount", param: new { Model.Email, Model.Password, Model.Phone }, commandType: CommandType.StoredProcedure);
    public async ValueTask<StudentAccount> SelectFullUserAccountByEmailAsync(string Email) => await Connection.QuerySingleOrDefaultAsync<StudentAccount>(sql: "SelectFullUserAccountByEmail", param: new { Email }, commandType: CommandType.StoredProcedure);
    public async ValueTask<int> UpdateStudentProfileAsync(StudentAccount Model) => await Connection.ExecuteAsync(sql: "UpdateStudentProfile", param: new { Model.Phone, Model.ProfilePicture, Model.FullNameEN, Model.FullNameArabic, Model.Gender, Model.Country, Model.City, Model.Address, Model.ZipCode, Model.Nationality, Model.NID, Model.Passport, Model.Birthday, Model.PassportImg, Model.NIDImage, Model.BirthCImg, Model.BCImg, Model.DCImg, Model.MCImg, Model.PhdCimg, Model.LastQual, Model.ID }, commandType: CommandType.StoredProcedure);
    public async ValueTask<int> UpdateStudentPasswordAsync(int ID, string Password) => await Connection.ExecuteAsync(sql: "UpdateStudentPassword", param: new { ID, Password }, commandType: CommandType.StoredProcedure);
    public async ValueTask<LookUpTable[]> SelectDataAsync(string TableName) => (await Connection.QueryAsync<LookUpTable>(sql: "SelectData", new { TableName }, commandType: CommandType.StoredProcedure)).ToArray();
    public async ValueTask<List<Programs>> SelectProgramAsync() => (await Connection.QueryAsync<Programs>(sql: "SelectPrograms", null, commandType: CommandType.StoredProcedure)).AsList();
    public async ValueTask<List<ProgramsCourses>> SelectProgramsCoursesAsync(int ProgramID) => (await Connection.QueryAsync<ProgramsCourses>(sql: "SelectProgramsCourses", new { ProgramID }, commandType: CommandType.StoredProcedure)).AsList();

}
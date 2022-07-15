namespace StudentPlus.Api.Brokers.Storages;

public partial class StorageBroker : IStorageBroker
{
    public async ValueTask<bool> SelectUserAccountByEmailAsync(string Email) => await Connection.QuerySingleOrDefaultAsync<bool>(sql: "SelectUserAccountByEmail", param: new { Email }, commandType: CommandType.StoredProcedure);
    public async ValueTask<(bool IsLoggedin, int ID)> SelectUserAccountByEmailAndPasswordAsync(string Email, string Password) => await Connection.QuerySingleOrDefaultAsync<(bool IsLoggedin, int ID)>(sql: "SelectUserAccountByEmailAndPassword", param: new { Email, Password }, commandType: CommandType.StoredProcedure);
    public async ValueTask<int> InsertStudentAccountAsync(StudentAccount Model) => await Connection.ExecuteAsync(sql: "InsertStudentAccount", param: new { Model.ApplyYear, Model.Email, Model.Password, Model.Phone }, commandType: CommandType.StoredProcedure);
}
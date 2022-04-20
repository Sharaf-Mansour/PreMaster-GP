namespace Gadwaly.Broker.DataAccess;
internal class SqlServerDataAccess : ISqlDataAccess
{
    public string ConString => "Data Source=.;Initial Catalog=StudentArchiveDB;User Id=sa;Password=P@ssw0rd;TrustServerCertificate=True";
    public IDbConnection Con => new SqlConnection(ConString);
    public async ValueTask<int> Execute(string sql, object? Param = null) => await Con.ExecuteAsync(sql, Param, commandType: CommandType.StoredProcedure);
    public async ValueTask<IEnumerable<T>> GetList<T>(string sql, object? Param = null) => await Con.QueryAsync<T>(sql, Param, commandType: CommandType.StoredProcedure);
    public async ValueTask<T?> GetValue<T>(string sql, object? Param = null) => await Con.ExecuteScalarAsync<T>(sql, Param, commandType: CommandType.StoredProcedure);
    public async ValueTask<T?> GetRow<T>(string sql, object? Param = null) => await Con.QueryFirstOrDefaultAsync<T>(sql, Param, commandType: CommandType.StoredProcedure);
}
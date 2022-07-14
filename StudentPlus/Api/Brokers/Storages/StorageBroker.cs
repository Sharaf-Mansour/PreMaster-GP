namespace StudentPlus.Api.Brokers.Storages;
public partial class StorageBroker : IStorageBroker
{ 
    public static string connectionString { get; set; }
    public IDbConnection Connection => new SqlConnection(connectionString);
}
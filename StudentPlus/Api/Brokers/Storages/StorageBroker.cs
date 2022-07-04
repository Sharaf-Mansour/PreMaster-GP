namespace StudentPlus.Api.Brokers.Storages;
public partial class StorageBroker : IStorageBroker
{
    [Inject] protected IConfiguration configuration { get; set; } = new ConfigurationManager();

    public static string connectionString { get; set; }
    public IDbConnection Connection => new SqlConnection(connectionString);

}
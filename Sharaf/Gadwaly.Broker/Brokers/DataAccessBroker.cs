namespace Gadwaly.Broker.Brokers;
public class DataAccessBroker
{
    protected static ISqlDataAccess DA => new SqlServerDataAccess();
}
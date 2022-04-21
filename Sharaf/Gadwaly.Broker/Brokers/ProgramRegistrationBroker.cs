namespace Gadwaly.Broker.Brokers;

public class ProgramRegistrationBroker : DataAccessBroker
{
    public static async ValueTask<LookUp[]> SelectDataAsync(string TableName)
        => (await DA.GetList<LookUp>("SelectData", new { TableName })).ToArray();
    public static async ValueTask<LookUp?> SelectDataByIdAsync(int ID, string TableName)
        => await DA.GetRow<LookUp>("SelectDataById", new { ID, TableName });
    public static async ValueTask<bool> InsertDataAsync(string Data, string TableName)
        => await DA.Execute("InsertData", new { Data, TableName }) > 0;
    public static async ValueTask<bool> UpdateDataAsync(LookUp Data, string TableName)
        => await DA.Execute("UpdateData", new { Data, TableName }) > 0;
    public static async ValueTask<bool> DeleteDataAsync(int ID, string TableName)
        => await DA.Execute("DeleteData", new { ID, TableName }) > 0;
}
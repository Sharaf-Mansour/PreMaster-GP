
namespace StudentPlus.Api.Services;
public class LookUpService
{
    [Inject] protected IStorageBroker storageBroker { get; set; } = new StorageBroker();
    public async ValueTask<LookUpTable[]> RetriveDataAsync(string TableName) => await this.storageBroker.SelectDataAsync(TableName: TableName);

}

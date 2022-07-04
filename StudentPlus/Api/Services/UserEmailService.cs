using StudentPlus.Api.Brokers.Storages;
namespace StudentPlus.Api.Services
{
    public class UserEmailService
    {
        [Inject] protected IStorageBroker storageBroker { get; set; } = new StorageBroker();
        public async ValueTask<bool> RetriveUserAccountByEmailAsync(string Email) => await this.storageBroker.SelectUserAccountByEmailAsync(Email: Email);
        public async ValueTask<(bool IsCorrect, int ID)> RetriveUserAccountByEmailAndPasswordAsync(string Email, string Password) => await this.storageBroker.SelectUserAccountByEmailAndPasswordAsync(Email: Email, Password: Password);
        public async ValueTask<int> AddStudentAccountAsync(StudentAccount Model) => await this.storageBroker.InsertStudentAccountAsync(Model: Model);
    }
}
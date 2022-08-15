namespace StudentPlus.Api.Services;

public class StudentProfileService
{
    [Inject] protected IStorageBroker storageBroker { get; set; } = new StorageBroker();
    public async ValueTask<int> EditStudentProfileAsync(StudentAccount StudentAccount) => await this.storageBroker.UpdateStudentProfileAsync(StudentAccount: StudentAccount);
    public async ValueTask<int> EditStudentPasswordAsync(int ID, string Password) => await this.storageBroker.UpdateStudentPasswordAsync(ID: ID, Password: Password);


}

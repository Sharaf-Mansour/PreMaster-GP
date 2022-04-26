using Gadwaly.Broker.Brokers;
using Gadwaly.Models;
namespace Gadwaly.Service.StudentCreationService;
public class StudentRegistrationService
{
    public async ValueTask<ResponseType> CreateStudentAsync(StudentArchive? Student)
    {
        var response = ResponseType.IsNull;
        if (Student is not null)
        {
            response = ResponseType.IsNotValid;
            if ((await Student.ValidateAsync()).IsValid)
            {
                response = ResponseType.AlreadyExists; ;
                if (await StudentRegistrationBroker.GetStudentAsync(Student!.StudentID) is null)
                {
                    response = ResponseType.IsDbError;
                    if (await StudentRegistrationBroker.CreateStudentAsync(Student))
                        response = ResponseType.Success;
                }
            }
        }
        return response;
    }
    public async ValueTask<(bool, string)> ApproveStudentsAsync(IDList[]? Students)
    {
        var IsApproved = false;
        var Msg = "Error: Parameter is null";
        if (Students is not null)
        {
            Msg = "Error: List has no students";
            if (Students.Length > 0)
            {
                (IsApproved, var count) = await StudentAccountBroker.AcceptStudentListAsync(Students);
                Msg = $" Warning  {count} Students of {Students.Length} has been Updated ";
                if (IsApproved)
                    Msg = $" Success  {count} Students of {Students.Length} has been Updated ";
            }
        }
        return (IsApproved, Msg);
    }
}
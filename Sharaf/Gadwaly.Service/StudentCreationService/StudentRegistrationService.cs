using Gadwaly.Broker.Brokers;
using Gadwaly.Models;
namespace Gadwaly.Service.StudentCreationService;
public class StudentRegistrationService
{
    public async ValueTask<(bool, string)> CreateStudentAsync(StudentArchive Student)
    {
        var Msg = "Error: Student Not Valid";
        var IsAdded = false;
        var Validation = Student.Validate();
        if (Validation.IsValid)
        {
            Msg = "Error: Student Already Exist";
            bool IsNewStudent = await StudentRegistrationBroker.GetStudentAsync(Student.StudentID) is null;
            if (IsNewStudent)
            {
                Msg = "Error In Database";
                IsAdded = await StudentRegistrationBroker.CreateStudentAsync(Student);
                if (IsAdded)
                    Msg = "Success";
            }
        }
        return (IsAdded, Msg);
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
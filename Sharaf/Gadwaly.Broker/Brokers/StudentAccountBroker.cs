using System.Text;
using Microsoft.Data.SqlClient.Server;

namespace Gadwaly.Broker.Brokers;
public class StudentAccountBroker : DataAccessBroker
{
    public static async ValueTask<StudentArchive[]> GetAcceptedStudentsAsync()
        => (await DA.GetList<StudentArchive>("GetAcceptedStudents")).ToArray();
    public static async ValueTask<StudentArchive[]> GetAllStudentsAsync()
        => (await DA.GetList<StudentArchive>("GetAllStudents")).ToArray();
    public static async ValueTask<StudentArchive[]> GetPendingStudentsAsync()
        => (await DA.GetList<StudentArchive>("GetPendingStudents")).ToArray();
    public static async ValueTask<StudentArchive[]> GetRejectedStudentsAsync()
        => (await DA.GetList<StudentArchive>("GetRejectedStudents")).ToArray();
    public static async ValueTask<bool> PrendingStudentAsync(Guid ID)
        => await DA.Execute("PrendingStudent", new { ID }) > 0;
    public static async ValueTask<bool> RejectStudentAsync(Guid ID)
        => await DA.Execute("RejectStudent", new { ID }) > 0;
    public static async ValueTask<bool> AcceptStudentAsync(Guid ID)
        => await DA.Execute("AcceptStudent", new { ID }) > 0;
    public static async ValueTask<(bool, int)> PrendingStudentListAsync(IDList[] StudentList)
    {
        var Count = await DA.Execute("PrendingStudentList", new { StudentList = StudentList.Strigly() });
        return (Count == StudentList.Length, Count);
    }
    public static async ValueTask<(bool, int)> RejectStudentListAsync(IDList[] StudentList)
    {
        var Count = await DA.Execute("RejectStudentList", new { StudentList = StudentList.Strigly() });
        return (Count == StudentList.Length, Count);
    }
    public static async ValueTask<(bool, int)> AcceptStudentListAsync(IDList[] StudentList)
    {
        var Count = await DA.Execute("AcceptStudentList", new { StudentList = StudentList.Strigly() });
        return (Count == StudentList.Length, Count);
    }
}
global using Gadwaly.Models;
global using Gadwaly.Broker.DataAccess;
namespace Gadwaly.Broker.Brokers;

public class StudentRegistrationBroker : DataAccessBroker
{
    /// <summary>
    /// Create a Student
    /// </summary>
    /// <param name="Student"></param>
    /// <returns> Return true if Created</returns>
    public static async ValueTask<bool> CreateStudentAsync(StudentArchive Student)
     => await DA.Execute("CreateStudent", Student with { IsUpdate = false }) > 0;
    /// <summary>
    /// Update a Student
    /// </summary>
    /// <param name="Student"></param>
    /// <returns> Return true if Updated </returns>
    public static async ValueTask<bool> UpdateStudentAsync(StudentArchive Student)
     => await DA.Execute("UpdateStudent", Student with { IsUpdate = true }) > 0;
    /// <summary>
    /// Delete a Student
    /// </summary>
    /// <param name="StudentID"></param>
    /// <returns> Return true if deleted  </returns>
    public static async ValueTask<bool> DeleteStudentAsync(Guid StudentID)
    => await DA.Execute("DeleteStudent", new { StudentID }) > 0;
    /// <summary>
    /// Select a Student
    /// </summary>
    /// <param name="StudentID"></param>
    /// <returns> Return Student based on ID  </returns>
    public static async ValueTask<StudentArchive?> GetStudentAsync(Guid StudentID)
    => await DA.GetRow<StudentArchive>("GetStudent", new { StudentID });



}
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
    public static async ValueTask<bool> CreateStudent(StudentArchive Student)
     => await DA.Execute("CreateStudent", Student) > 0;
    /// <summary>
    /// Update a Student
    /// </summary>
    /// <param name="Student"></param>
    /// <returns> Return true if Updated </returns>
    public static async ValueTask<bool> UpdateStudent(StudentArchive Student)
     => await DA.Execute("UpdateStudent", Student) > 0;
    /// <summary>
    /// Delete a Student
    /// </summary>
    /// <param name="StudentID"></param>
    /// <returns> Return true if deleted  </returns>
    public static async ValueTask<bool> DeleteStudent(Guid StudentID)
    => await GetStudent(StudentID) is null || await DA.Execute("DeleteStudent", new { StudentID }) > 0;
    /// <summary>
    /// Select a Student
    /// </summary>
    /// <param name="StudentID"></param>
    /// <returns> Return Student based on ID  </returns>
    public static async ValueTask<StudentArchive?> GetStudent(Guid StudentID)
    => await DA.GetRow<StudentArchive>("GetStudent", new { StudentID });
}
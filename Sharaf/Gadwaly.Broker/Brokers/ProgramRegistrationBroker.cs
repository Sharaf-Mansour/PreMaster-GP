namespace Gadwaly.Broker.Brokers;

public class ProgramRegistrationBroker : DataAccessBroker
{
    /// <summary>
    /// Select a Student
    /// </summary>
    /// <param name="StudentID"></param>
    /// <returns> Return Student based on ID  </returns>
    public static async ValueTask<LookUp[]> SelectData(int ID)
        => (await DA.GetList<LookUp>("SelectData", new { ID })).ToArray();
}
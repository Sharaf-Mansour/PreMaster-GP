namespace StudentPlus.Api.Brokers.DateTimes;

public class DateTimeBroker : IDateTimeBroker
{
    public DateTimeOffset GetDateTimeOffsetUtc() => DateTimeOffset.UtcNow;
    public DateTimeOffset GetDateTimeOffsetLocal() => DateTimeOffset.Now;
}
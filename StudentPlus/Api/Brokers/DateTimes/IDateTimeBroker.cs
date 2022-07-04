namespace StudentPlus.Api.Brokers.DateTimes;

public interface IDateTimeBroker
{
    DateTimeOffset GetDateTimeOffsetUtc();
    DateTimeOffset GetDateTimeOffsetLocal();
}

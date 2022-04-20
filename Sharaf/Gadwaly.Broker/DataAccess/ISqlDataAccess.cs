global using System.Data;
global using Dapper;
global using Microsoft.Data.SqlClient;
namespace Gadwaly.Broker.DataAccess;

public interface ISqlDataAccess
{
    string ConString { get; }
    IDbConnection Con { get; }
    ValueTask<int> Execute(string sql, object? Param = null);
    ValueTask<IEnumerable<T>> GetList<T>(string sql, object? Param = null);
    ValueTask<T?> GetValue<T>(string sql, object? Param = null);
    ValueTask<T?> GetRow<T>(string sql, object? Param = null);
}
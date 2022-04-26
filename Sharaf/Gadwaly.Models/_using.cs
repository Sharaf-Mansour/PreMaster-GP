global using FluentValidation;
global using FluentValidation.Results;
global using Gadwaly.Models.Validation;
namespace Gadwaly.Models;
public static class ValidationExtensions
{
    public static async ValueTask<ValidationResult> ValidateAsync<T>(this T? type) => type switch
    {
        string => await new DataValidator().ValidateAsync(type as string),
        IDList => await new IDListValidator().ValidateAsync(type as IDList),
        LookUp => await new LookUpValidator().ValidateAsync(type as LookUp),
        StudentArchive => await new StudentArchiveValidator().ValidateAsync(type as StudentArchive),
        null => new ValidationResult
        {
            Errors =
    {
        new("error", $"Value is null ")
    }
        },
        _ => new ValidationResult
        {
            Errors =
            {
                new ("error",$"type of {type.GetType()} ValidationResult is not yet implemented")
            }
        }
    };
}
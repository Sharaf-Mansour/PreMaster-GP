global using FluentValidation;
global using FluentValidation.Results;
global using Gadwaly.Models.Validation;
namespace Gadwaly.Models;
public static class ValidationExtensions
{
    public static ValidationResult Validate<T>(this T? type) => type switch
    {
        string => new DataValidator().Validate(type as string),
        IDList => new IDListValidator().Validate(type as IDList),
        LookUp => new LookUpValidator().Validate(type as LookUp),
        StudentArchive => new StudentArchiveValidator().Validate(type as StudentArchive),
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
namespace Gadwaly.Models.Validation;
public class DataValidator : AbstractValidator<string>
{
    public DataValidator() => RuleFor(x => x).NotEmpty().WithMessage("Data is empty ");
}
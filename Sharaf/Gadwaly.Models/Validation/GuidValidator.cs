namespace Gadwaly.Models.Validation;
public class GuidValidator : AbstractValidator<Guid>
{
    public GuidValidator() => RuleFor(x => x).NotEmpty().WithMessage("ID can not be null ");
}
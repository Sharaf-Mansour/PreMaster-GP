namespace Gadwaly.Models.Validation;
public class IDListValidator : AbstractValidator<IDList>
{
    public IDListValidator() => RuleFor(x => x.ID).SetValidator(new GuidValidator());
}
namespace Gadwaly.Models.Validation;
public class LookUpValidator : AbstractValidator<LookUp>
{
    public LookUpValidator()
    {
        RuleFor(x => x.ID).GreaterThan(0);
        RuleFor(x => x.Data).SetValidator(new DataValidator());
    }
}
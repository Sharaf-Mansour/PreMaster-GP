namespace StudentPlus.Models;
public partial class StudentAccount
{
    public class StudentAccountValidator : AbstractValidator<StudentAccount>
    {
        public StudentAccountValidator()
        {
            RuleFor(x => x.Email)
            .MustAsync(async (Email, Token) => !await new UserEmailService().RetriveUserAccountByEmailAsync(Email))
            .WithMessage("Email Already Exist.");
            RuleFor(x => x.Email)
            .NotEmpty().WithMessage("Email required.")
            .MaximumLength(255).WithMessage("Not allowed for more than 255 Letters");
            RuleFor(x => x.Email)
           .EmailAddress().When(x => !string.IsNullOrWhiteSpace(x.Email))
           .WithMessage("Format of mail is not correct");
            RuleFor(x => x.Phone).NotEmpty().WithMessage("Phone is required");
            RuleFor(x => x.Phone)
            .Matches(@"^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$")
            .When(x => !string.IsNullOrWhiteSpace(x.Phone))
            .WithMessage(x => $"{x.Phone} is not a valid phone number.");
            RuleFor(x => x.Password).NotEmpty().WithMessage("Password is required");
            RuleFor(x => x.Password).MinimumLength(6).WithMessage("Password must be at least 6 characters long");
            RuleFor(x => x.Password).MaximumLength(20).WithMessage("Password must be at most 20 characters long");
            RuleFor(x => x.Password).Matches(@"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$")
            .WithMessage("Password must contain at least one lowercase letter, one uppercase letter, one number and one special character");
            RuleFor(x => x.Password).NotEqual(x => x.Email).When(x => !string.IsNullOrWhiteSpace(x.Password)).WithMessage("Password must not be the same as email");
            RuleFor(x => x.Password).NotEqual(x => x.Phone).When(x => !string.IsNullOrWhiteSpace(x.Password)).WithMessage("Password must not be the same as phone");
            //RuleFor(x => x.Password).Equal(x => x.ConfirmPassword).WithMessage("Password and confirm password must be the same");
            RuleFor(x => x.ConfirmPassword).NotEmpty().When(x => !string.IsNullOrWhiteSpace(x.Password)).WithMessage("Confirm Password is required");
            RuleFor(x => x.ConfirmPassword).Equal(x => x.Password).WithMessage("Password and Confirm Password must be same");
            RuleFor(x => x.PrivacyCheck).Equal(true).WithMessage("Privacy Check is required");
        }
    }
}

namespace StudentPlus.Models;
public partial class AccountLogin
{
    public class AccountLoginValidator : AbstractValidator<AccountLogin>
    {
        private UserEmailService UserEmailService => new();
        string email;
        public AccountLoginValidator()
        {
            RuleFor(x => x.Email)
               .MustAsync(async (Email, Token) => await UserEmailService.RetriveUserAccountByEmailAsync(email = Email))
               .WithMessage("Email Does not Exist.");
            RuleFor(x => x.Email)
           .NotEmpty().WithMessage("Email required.")
           .MaximumLength(255).WithMessage("Not allowed for more than 255 Letters");
            RuleFor(x => x.Email)
           .EmailAddress().When(x => !string.IsNullOrWhiteSpace(x.Email))
           .WithMessage("Format of mail is not correct");
            RuleFor(x => x.Password).MustAsync(async (Model, Token) => (await UserEmailService.RetriveUserAccountByEmailAndPasswordAsync(email, Model)).IsCorrect)
            .WhenAsync(async (Model, Token) => await UserEmailService.RetriveUserAccountByEmailAsync(email = Model.Email))
                .WithMessage("Wrong Password");

        }
    }
}
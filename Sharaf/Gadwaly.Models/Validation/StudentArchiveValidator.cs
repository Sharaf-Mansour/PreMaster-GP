namespace Gadwaly.Models.Validation;
public class StudentArchiveValidator : AbstractValidator<StudentArchive>
{
    public StudentArchiveValidator()
    {
        RuleFor(x => x.StudentID).SetValidator(new GuidValidator()).When(x => x.IsUpdate);
        RuleFor(x => x.NameArabic);
        RuleFor(x => x.NameEnglish);
        RuleFor(x => x.IsForeigner);
        RuleFor(x => x.Nationality);
        RuleFor(x => x.NID);
        RuleFor(x => x.Passport);
        RuleFor(x => x.Birthday);
        RuleFor(x => x.PlaceOfBirth);
        RuleFor(x => x.Sex);
        RuleFor(x => x.PlaceOfResidence);
        RuleFor(x => x.Job);
        RuleFor(x => x.Company);
        RuleFor(x => x.Phone);
        RuleFor(x => x.Email);
        RuleFor(x => x.Collage);
        RuleFor(x => x.University);
        RuleFor(x => x.Grade);
        RuleFor(x => x.ApplyAcademicDegree);
        RuleFor(x => x.ApplySpecialization);
        RuleFor(x => x.ApplyDate);
        RuleFor(x => x.ApplyStatus);
        RuleFor(x => x.StudentImg);
        RuleFor(x => x.StudentQualImg);
        RuleFor(x => x.StudentSSNImg);
        RuleFor(x => x.StudentBirthCertImg);
    }
}
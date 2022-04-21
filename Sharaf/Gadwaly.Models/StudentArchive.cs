namespace Gadwaly.Models;
public record class StudentArchive
{
    public Guid StudentID { get; set; }
    public string NameArabic { get; set; }
    public string NameEnglish { get; set; }
    public bool IsForeigner { get; set; }
    public string Nationality { get; set; }
    public string NID { get; set; }
    public string Passport { get; set; }
    public DateTime Birthday { get; set; }
    public string PlaceOfBirth { get; set; }
    public bool Sex { get; set; }
    public string PlaceOfResidence { get; set; }
    public string Job { get; set; }
    public string Company { get; set; }
    public string Phone { get; set; }
    public string Email { get; set; }
    public string LastQualification { get; set; }
    public string Collage { get; set; }
    public string University { get; set; }
    public string Grade { get; set; }
    public int ApplyAcademicDegree { get; set; }
    public int ApplySpecialization { get; set; }
    public DateTime ApplyDate { get; set; } = DateTime.UtcNow;
    public int ApplyStatus { get; set; }
    public string StudentImg { get; set; }
    public string StudentQualImg { get; set; }
    public string StudentSSNImg { get; set; }
    public string StudentBirthCertImg { get; set; }
    public bool IsUpdate { get; set; }
}
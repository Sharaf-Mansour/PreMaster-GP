namespace StudentPlus.Models;
public partial class StudentId
{
    public int ID { get; set; }
    public string? StudentID => $"{ApplyYear}{(ID is < 100000 and >= 10000 ? $"0{ID}" : ID is < 10000 and >= 1000 ? $"00{ID}" : ID is < 1000 and >= 100 ? $"000{ID}" : ID is < 100 and >= 10 ? $"0000{ID}" : ID is < 10 and > 0 ? $"00000{ID}" : $"{ID}")}";
    public string? ApplyYear { get; set; } = DateTime.Now.ToString("yyyy");
}
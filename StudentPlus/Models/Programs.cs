namespace StudentPlus.Models;

public partial class Programs
{
    public int? ID { get; set; }
    public string? Name { get; set; }
    public double CostEGP { get; set; }
    public double CostUSD { get; set; }
    public string? year { get; set; }
    public int SpecializationID { get; set; }
    public string? SpecializationName { get; set; }
    public int DegreesID { get; set; }
    public string? DegreesName { get; set; }
    public string? Image { get; set; }
    public DateTime StartDate { get; set; }
}


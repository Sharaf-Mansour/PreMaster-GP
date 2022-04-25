
using System.Text;

namespace Gadwaly.Broker;

public static class Helper
{
    public static string Strigly(this IDList[] List)
    {
        var x = new StringBuilder();
        foreach (var item in List)
            x.Append($"{item.ID},");
        x.Remove(x.Length - 1, 1);
        return x.ToString();
    }
}


using System.ComponentModel.Design.Serialization;
using Gadwaly.Models;
using Gadwaly.Service.StudentCreationService;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddEndpointsApiExplorer().AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
    app.UseSwagger().UseSwaggerUI();

app.UseHttpsRedirection();













app.MapPost("/CreateStudent", async (StudentArchive Student) =>
(BoolString)(await new StudentRegistrationService().CreateStudentAsync(Student)));
app.Run();
record BoolString(bool Action, string Msg)
{
    public static explicit operator BoolString((bool, string) x) => new(x.Item1, x.Item2);
    public static implicit operator (bool, string)(BoolString x) => x;
}


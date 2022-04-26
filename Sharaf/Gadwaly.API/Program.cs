using Gadwaly.Models;
using Gadwaly.Service.StudentCreationService;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding;
var builder = WebApplication.CreateBuilder(args);
builder.Services.AddEndpointsApiExplorer().AddSwaggerGen();
var app = builder.Build();
if (app.Environment.IsDevelopment())
    app.UseSwagger().UseSwaggerUI();
app.UseHttpsRedirection();
app.MapPost("/CreateStudent", async ([FromBody(EmptyBodyBehavior = EmptyBodyBehavior.Allow)] StudentArchive? Student) =>
    await new StudentRegistrationService().CreateStudentAsync(Student)
        switch
    {
        ResponseType.AlreadyExists => Results.BadRequest("Student Already Exists"),
        ResponseType.IsDbError => Results.BadRequest("Database error Check logs"),
        ResponseType.IsNotValid => Results.BadRequest("Student Is not Valid"),
        ResponseType.IsNull => Results.BadRequest("Student Is null"),
        ResponseType.Success => Results.Created($"/Student/{Student?.StudentID}", Student),
        _ => Results.Problem("Something went unexpected Check logs")
    });
app.Run();
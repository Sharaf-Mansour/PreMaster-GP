global using FluentValidation;
global using StudentPlus.Models;
global using Microsoft.AspNetCore.Components;
global using Microsoft.AspNetCore.Components.Web;
global using StudentPlus.Data;
global using StudentPlus.Api.Brokers.Storages;
global using StudentPlus.Api.Services;

var builder = WebApplication.CreateBuilder(args);
StorageBroker.connectionString = builder.Configuration.GetConnectionString(name: "DefaultConnection");
// Add services to the container.
builder.Services.AddRazorPages()
    .Services.AddServerSideBlazor((o) => o.DetailedErrors = true)
     .Services.AddScoped<NavigationService>()
    .AddScoped<IStorageBroker, StorageBroker>()
   .AddScoped<UserEmailService>();
var app = builder.Build();

// Configure the HTTP request pipeline.
//if (!app.Environment.IsDevelopment())
//    app.UseExceptionHandler("/Error").UseHsts();

app.UseHttpsRedirection().UseStaticFiles().UseRouting();
app.MapBlazorHub();
app.MapFallbackToPage("/_Host");

app.Run();
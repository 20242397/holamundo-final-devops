var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

var greeter = new HolaMundoApp.Greeter();

app.MapGet("/", () => greeter.GetGreeting());

app.Run();
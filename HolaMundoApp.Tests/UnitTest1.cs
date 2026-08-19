using HolaMundoApp;

namespace HolaMundoApp.Tests;

public class GreeterTests
{
    [Fact]
    public void GetGreeting_DevuelveMensajeCorrecto()
    {
        // Arrange
        var greeter = new Greeter();

        // Act
        var resultado = greeter.GetGreeting();

        // Assert
        Assert.Equal("Hola Mundo desde ASP.NET Core con CI/CD!", resultado);
    }
}
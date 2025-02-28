using System.Net.Http;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Newtonsoft.Json;

namespace WeatherApp;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    private readonly string apiKey = "64b0229836b2d0909d83d4d7916c4610";
    private string requestUrl = "https://api.openweathermap.org/data/2.5/weather";

    public MainWindow()
    {
        InitializeComponent();
        UpdateData("City");
    }

    public void UpdateData(string cityname)
    {
        var result = GetWeatherData("Alaska");

        string finalImage = "sun.png";
        string currentWeather = result.weather[0].main.ToLower();

        if (currentWeather.Contains("cloud"))
        {
            finalImage = "cloud.png";
        }
        else if (currentWeather.Contains("rain"))
        {
            finalImage = "rain.png";
        }
        else if (currentWeather.Contains("snow"))
        {
            finalImage = "snow.png";
        }

        backgroundImage.ImageSource = new BitmapImage(new Uri("C:\\Users\\Ibrahim.zeqiraj.EOSCOP\\source\\repos\\WeatherApp\\WeatherApp\\Images\\" + finalImage, UriKind.Relative));

        labelTemperature.Content = (result.main.temp.ToString("F1") + "°C");
        labelInfo.Content = result.weather[0].main;
    }

    public WeatherMapResponse GetWeatherData(string cityname)
    {
        var city = cityname;
        var finalUri = requestUrl + "?q=" + city + "&appid=" + apiKey + "&units=metric";

        HttpClient httpClient = new HttpClient();


        HttpResponseMessage httpResponse = httpClient.GetAsync(finalUri).Result;
        string response = httpResponse.Content.ReadAsStringAsync().Result;
        WeatherMapResponse weatherMapResponse = JsonConvert.DeserializeObject<WeatherMapResponse>(response);

        return weatherMapResponse;
    }

    private void Button_Click(object sender, RoutedEventArgs e)
    {
        string input = TextBoxInput.Text;
        UpdateData(input);
    }
}
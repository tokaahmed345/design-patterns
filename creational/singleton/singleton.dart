class AppConfig {
 static final AppConfig _instance=AppConfig._internal(); 
  late String apiBaseUrl;
  late bool isDarkMode;

  AppConfig._internal(){
    apiBaseUrl = 'https://api.example.com';
    isDarkMode = false;
  }

  factory AppConfig() {
    return _instance;
  }
}


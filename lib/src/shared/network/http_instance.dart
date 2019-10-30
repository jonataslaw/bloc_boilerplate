import 'package:http/http.dart' as http;

class HttpInstance {
  static HttpInstance _singletonHttp;
  http.Client _httpClient;

  factory HttpInstance() {
    if (_singletonHttp == null) _singletonHttp = HttpInstance._();
    return _singletonHttp;
  }

  HttpInstance._() {
    _httpClient = http.Client();
  }

  http.Client get client => _httpClient;

  dispose() {
    _httpClient.close();
  }
}

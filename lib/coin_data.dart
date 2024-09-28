import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = '?apiKey=56D14282-678C-4102-9A0F-1289A98CEEC8';
const webAddress = 'https://rest.coinapi.io/v1/exchangerate';
String selectedCoin = 'BTC';
// String selectedCurrency = 'NGN';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'NGN',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'TRY',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getCoinData(String selectedcurrency) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String requestURL = '$webAddress/$crypto/$selectedcurrency$apiKey';
      http.Response response = await http.get(Uri.parse(requestURL));
      if (response.statusCode == 200) {
        // String data = response.body;
        var decodedData = jsonDecode(response.body);
        double lastPrice = decodedData['rate'];
        cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
      } else {
        print(response.statusCode);
        throw ('Failed to Load Coin Data');
      }
    }
    return cryptoPrices;
  }
}

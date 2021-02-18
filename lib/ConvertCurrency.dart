import 'dart:collection';

class ConvertCurrency{
  
  double FromValue = 0.0;
  double ToValue = 0.0;
  double Counvert =0.0;
  int flug1= 0;
  int flug2= 0;
  List<String> CurrencyName= <String>['UsDoller',
    'CanadianDoller',
    'Taka',
    'Euro',
    'StarlingPound',
    'KsaReal'];

    HashMap s = new HashMap<String,String>();

    List<double> USD = <double>[1,1.27,84.92,0.83,0.72,3.75];
    List<double> CAD = <double>[1.27,1,84.92,0.83,0.72,3.75];
    List<double> BDT = <double>[84.92,1.72,1,0.83,0.72,3.75];

    ConvertCurrency();
    void SetValues(String From, String To){
      flug1=0;
      if(From == CurrencyName[flug1]){
        FromValue = USD[flug1];
        flug2=2;
        if(To == CurrencyName[flug2]){
          ToValue = BDT[flug2];
        }
      }
    }
    String Convert(String From, String To,double amount){
      SetValues( From, To);
      
      var a = FromValue * ToValue * amount;
      Counvert = a.toDouble();
      return a.toString();
    }
}
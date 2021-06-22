

class Paises{
  List<Pais> items = <Pais>[];

  Paises();

  Paises.fromJsonList(List<dynamic> jsonList){
  // if ( jsonList == null ) {        //no esta trabajando esta parte 
  //   return;                        //lo unico que quise hacer fue devoler nada si esta vacio 
  // }

  for (var item in jsonList){
    final pais = new Pais.fromJsonMap(item);
    items.add(pais);
  }
}
}

class Pais {
  String?           name ;
  List<String>?     topLevelDomain;
  String?           alpha2Code;
  String?           alpha3Code;
  List<String>?     callingCodes;
  String?           capital;
  List<String>?     altSpellings;
  String?           region;
  String?           subregion;
  int?              population;
  List<double>?     latlng;
  String?           demonym;
  double?           area;
  double?           gini;
  List<String>?     timezones;
  List<String> ?    borders;
  String?           nativeName;
  String?           numericCode;
  List<String>?     currencies;
  List<String>?     languages;
  String?           translations;
  String?           flag;
  List<String>?     regionalBlocs;
  String?           cioc;

  Pais({
    required this.name,
    required this.topLevelDomain,
    required this.alpha2Code,
    required this.alpha3Code,
    required this.callingCodes,
    required this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.population,
    required this.latlng,
    required this.demonym,
    required this.area,
    required this.gini,
    required this.timezones,
    required this.borders,
    required this.nativeName,
    required this.numericCode,
    required this.currencies,
    required this.languages,
    required this.translations,
    required this.flag,
    required this.regionalBlocs,
    required this.cioc,
  });

  Pais.fromJsonMap( Map<String, dynamic> json){

    name           = json['name'];
    topLevelDomain = json['topLevelDomain'].cast<String>();
    alpha2Code     = json['alpha2Code'];
    alpha3Code     = json['alpha3Code'];
    callingCodes   = json['callingCodes'].cast<String>();
    capital        = json['capital'];
    altSpellings   = json['altSpellings'].cast<String>();
    region         = json['region'];
    subregion      = json['subregion'];
    population     = json['population'];
    latlng         = json['latlng'].cast<double>();
    demonym        = json['demonym'];
    area           = json['area'];
    gini           = json['gini'];
    borders        = json['borders'].cast<String>();
    timezones      = json['timezones'].cast<String>();
    nativeName     = json['nativeName'];
    numericCode    = json['numericCode'];
    currencies     = json['currencies'].cast<String>();
    languages      = json['languages'].cast<String>();
    translations   = json['translations'].toString();
    flag           = json['flag'];
    regionalBlocs  = json['regionalBlocs'].cast<String>();
    cioc           = json['cioc'];
    
  }
}

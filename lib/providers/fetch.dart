import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:uso_de_listview/model/modelo_paises.dart';

class PaisesProvider{

  String _url = 'restcountries.eu';


  Future<List<Pais>> getAllPaises() async{
    
    final url = Uri.https(_url, '/rest/v2/all');

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    
    final dynamic paises = new Paises.fromJsonList(decodedData);
    // print(paises.items[3].name);
    //print(paises);
    return paises.items;
    // throw '';
  }
}

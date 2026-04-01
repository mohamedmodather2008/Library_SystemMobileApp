import 'package:dio/dio.dart';
import 'package:revitionnn/models/bookmodel.dart';

class Bookservice {
  static Dio dio=Dio();
  static Future<Bookmodel>get()async{
    Response response =await dio.get("https://librarysystemflutterteam.runasp.net/api/Book/GetBooks");
    return Bookmodel.fromjson(response.data);
  }
  
    static Future<Bookmodel>getbyname(String name)async{
    Response response =await dio.get("https://librarysystemflutterteam.runasp.net/api/Book/GetBookByName?Bookname=$name");
    return Bookmodel.fromjson(response.data);
  }
} 
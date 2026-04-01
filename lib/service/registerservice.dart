import 'package:dio/dio.dart';
import 'package:revitionnn/models/registermodel.dart';

class Registerservice {
  static Dio dio =Dio();


  static Future<Registermodel>login({required String email,required String password})async{
    try{
      Response response =await dio.post("https://librarysystemflutterteam.runasp.net/api/Registration/SignIn",data: {"Email":email,"password":password});
    return Registermodel.fromjson(response.data);
    }
    on DioException catch(e){
      throw Exception(e.message);
    }
  }


    static Future<Registermodel>signup({required String email,required String password,required String Name,required String Contract})async{
    try{
      Response response =await dio.post("https://librarysystemflutterteam.runasp.net/api/Registration/SignUp",data: {"Email":email,"password":password,"Name":Name,"contract":Contract});
    return Registermodel.fromjson(response.data);
    }
    on DioException catch(e){
      throw Exception(e.message);
    }
  }
}
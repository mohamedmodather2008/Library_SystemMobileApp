class Registermodel {
  final String message;
  final bool status;

  Registermodel({required this.message, required this.status});


  factory Registermodel.fromjson(Map<String,dynamic>json){
    return Registermodel(message: json["message"], status: json["statusCode"]);
  }
}
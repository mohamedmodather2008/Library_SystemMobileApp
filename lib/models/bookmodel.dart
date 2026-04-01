class Bookmodel {
final List<book>l;

  Bookmodel({required this.l});
  factory Bookmodel.fromjson(List json){
    List<book>temp=json.map((bo){
     return book(id: bo["id"], price: bo["price"], rate: bo["rate"], title: bo["title"], author: bo["author"]);
    }).toList();
    return Bookmodel(l: temp);
  }
  

}

class book{
  final int id;
  final num price;
  final num rate;
  final String title;
  final String author;

  book({required this.id, required this.price, required this.rate, required this.title, required this.author});

}
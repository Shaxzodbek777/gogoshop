class Product{
  String uid  = "";
  String image = "";
  String name = "";
  String coment = "";
  String cost = "";

  Product(this.uid, this.image, this.name, this.coment, this.cost);
  Product.fromJson(Map<String, dynamic> json)
      : uid = json ['uid'],
        image = json ['image'],
        name = json ['name'],
        coment = json [ 'coment'],
        cost = json ['cost'];

  Map<String, dynamic> toJson ()=> {
    'uid' : uid,
    'image' : image,
    'name': name,
    'coment' : coment,
    'cost': cost
  };
}
import "package:tcc/core/models/text_model.dart";

class RevenueModel {
  String id;
  String name;
  String title;
  List<dynamic> subtitle;
  String desc;
  double price;
  String platform;
  String release;
  String image;

  RevenueModel({
    this.id,
    this.name,
    this.title,
    this.subtitle,
    this.desc,
    this.price,
    this.platform,
    this.release,
    this.image,
  });

  RevenueModel.fromMap(Map<String, dynamic> map) {
    id = map["id"] as String;
    name = map["name"] as String;
    title = map["title"] as String;
    subtitle =
        map["subtitle"].map((second) => TextModel.fromMap(second)).toList();
    desc = map["desc"] as String;
    price = map["price"] as double;
    platform = map["platform"] as String;
    release = map["release"] as String;
    image = map["image"] as String;
  }
}

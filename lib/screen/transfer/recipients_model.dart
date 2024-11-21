class Recipient {
  final String? name;
  final String? image;
  final bool? selected;

  Recipient({this.image, this.name, this.selected});

  List<Recipient> recipients() {
    return [
      Recipient(name: "John Doe", image: "assets/person1.jpg", selected: true),
      Recipient(name: "Prime Lumbork", image: "assets/person2.jpg", selected: false),
      Recipient(name: "Jessie Jones", image: "assets/person5.jpg", selected: true),
      Recipient(name: "Richard Holmes", image: "assets/person3.jpg", selected: false),
      Recipient(name: "Benita Bright", image: "assets/person4.jpg", selected: false),
    ];
  }
}
  
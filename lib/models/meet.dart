class Meet{

  String name;
  String location;
  String image;
  String age;


  Meet({this.name, this.age, this.image, this.location});

  @override
  String toString() {
    return 'Meet{name: $name, location: $location, image: $image, idade: $age}';
  }
}

class House{
  String name;
  String address;
  String imageUrl;

  House (this.name, this.address, this.imageUrl);

  static List<House> generateRecommended(){
    return [
      House('The Monn House',
          'P455, Chhatak, Sylhet',
          'assets/image/offer01.jpeg'),
      House('The Monn House',
          'P455, Chhatak, Sylhet',
          'assets/image/offer02.jpeg')
    ];
  }

  static List<House> generateBestOffer(){
    return [
      House('The Monn House',
          'P455, Chhatak, Sylhet',
          'assets/image/house01.jpeg'),
      House('The Monn House',
          'P455, Chhatak, Sylhet',
          'assets/image/house02.jpeg')
    ];
  }
}
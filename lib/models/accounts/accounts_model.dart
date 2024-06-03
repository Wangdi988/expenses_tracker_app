class AccountsModel {
  num id= 0;
  String title= "Opening Balance(Cash)";
  String img= "https=//cdn.pixabay.com/photo/2021/07/24/07/23/chow-chow-6488846_1280.jpg";
  num openingBalance = 0;

  AccountsModel({
    this.id= 0,
    this.title= "Opening Balance(Cash)",
    this.img= "https=//cdn.pixabay.com/photo/2021/07/24/07/23/chow-chow-6488846_1280.jpg",
    this.openingBalance = 0,
  });

  // factory AccountsModel.fromJson(Map<String, dynamic> json) {
  //   return AccountsModel(
  //     id: json['id'],
  //     title: json['title'],
  //     img: json['img'],
  //     openingBalance: json['openingBalance']);
  // }

}
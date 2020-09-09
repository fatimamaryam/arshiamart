class CategoryList {
  int catId;
  String catName;
  String catImage;

  CategoryList(this.catId, this.catName, this.catImage);

  static List<CategoryList> fetchAll() {
    return [
      CategoryList(1, "Pharmacy",
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png"),
      CategoryList(2, "Snacks",
          "https://earthsky.org/upl/2018/12/comet-wirtanen-Jack-Fusco-dec-2018-Anza-Borrego-desert-CA-e1544613895713.jpg"),
      CategoryList(2, "Breakfast and Diary",
          "https://lokeshdhakar.com/projects/lightbox2/images/image-3.jpg"),
      CategoryList(2, "Groceries Groceries Groceries",
          "https://techcrunch.com/wp-content/uploads/2015/03/groceries-e1554037962210.jpg"),
      CategoryList(2, "Household Needs",
          "https://fastnfirstdelivery.com/wp-content/uploads/2020/06/home-needs.png"),
      CategoryList(2, "Beverages",
          "https://lh3.googleusercontent.com/proxy/MsTdaYBROjmco-kW1rdJlz3zP0CCwEvCYDRiL5PHPq3Sgu2NQrRXqKhxVaRY04UBAqUjyOoLIfDWrLrU9jbJPW-4uRURCxGQ2ejTbYFxpSDHuy0cQ4eIOQ"),
      CategoryList(2, "Something",
          "https://silentrants.files.wordpress.com/2010/12/refreshing.jpg"),
      CategoryList(2, "Another Something",
          "https://fastnfirstdelivery.com/wp-content/uploads/2020/06/home-needs.png"),
    ];
  }
}

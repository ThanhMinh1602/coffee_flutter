import 'package:coffee_flutter/models/category_model.dart';

class ProductModel {
  String? name;
  String? title;
  String? description;
  int? price;
  int? cateId;
  String? image;
  double? ratingStar;
  CategoryModel? categoryModel;
  List<String>? option;
  int? curentOption = 0;
  ProductModel();
}

List<ProductModel> listProduct = [
  ProductModel()
    ..name = 'Cinnamon & Cocoa'
    ..title = 'Drizzled with Caramel'
    ..image =
        'https://neurosciencenews.com/files/2023/06/coffee-brain-caffeine-neuroscincces.jpg'
    ..price = 299
    ..description =
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly '
            'sweetened cocoa powder and drizzled with scrumptious caramel syrup sweetened cocoa '
            'powder and drizzled with scrumptious caramel syrup '
    ..option = ['Oat Milk', 'Soy Milk', 'Almond Milk']
    ..ratingStar = 4.3
    ..cateId = 1,
  ProductModel()
    ..name = 'Drizzled with Caramel'
    ..title = 'Drizzled with Caramel'
    ..image = 'https://m.timesofindia.com/photo/90908667/90908667.jpg'
    ..price = 239
    ..description =
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly '
            'sweetened cocoa powder and drizzled with scrumptious caramel syrup sweetened cocoa '
            'powder and drizzled with scrumptious caramel syrup '
    ..option = ['Oat Milk', 'Soy Milk', 'Almond Milk']
    ..ratingStar = 4.9
    ..cateId = 3,
  ProductModel()
    ..name = 'Bursting Blueberry'
    ..title = 'Drizzled with Caramel'
    ..image =
        'https://images.lifestyleasia.com/wp-content/uploads/sites/7/2022/04/07145906/Feature-image-Nathan-Dumalo-Unsplash.jpg'
    ..price = 199
    ..description =
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly '
            'sweetened cocoa powder and drizzled with scrumptious caramel syrup sweetened cocoa '
            'powder and drizzled with scrumptious caramel syrup '
    ..option = ['Oat Milk', 'Soy Milk', 'Almond Milk']
    ..ratingStar = 5.0
    ..cateId = 4,
  ProductModel()
    ..name = 'Cinnamon & Cocoa'
    ..title = 'Drizzled with Caramel'
    ..image =
        'https://www.adityabirlacapital.com/healthinsurance/active-together/wp-content/uploads/2019/12/How-Are-Espressos-Good-For-Health_blog_lower_1-1200x1200.png'
    ..price = 529
    ..description =
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly '
            'sweetened cocoa powder and drizzled with scrumptious caramel syrup sweetened cocoa '
            'powder and drizzled with scrumptious caramel syrup '
    ..option = ['Oat Milk', 'Soy Milk', 'Almond Milk']
    ..ratingStar = 4.3
    ..cateId = 2,
  ProductModel()
    ..name = 'Cinnamon & Cocoa'
    ..title = 'Drizzled with Caramel'
    ..image =
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/1200px-A_small_cup_of_coffee.JPG'
    ..price = 1299
    ..description =
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly '
            'sweetened cocoa powder and drizzled with scrumptious caramel syrup sweetened cocoa '
            'powder and drizzled with scrumptious caramel syrup '
    ..option = ['Oat Milk', 'Soy Milk', 'Almond Milk']
    ..ratingStar = 4.8
    ..cateId = 2,
  ProductModel()
    ..name = 'Cinnamon & Cocoa'
    ..title = 'Drizzled with Caramel'
    ..image = 'https://vaya.in/recipes/wp-content/uploads/2018/05/Coffee.jpg'
    ..price = 499
    ..description =
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly '
            'sweetened cocoa powder and drizzled with scrumptious caramel syrup sweetened cocoa '
            'powder and drizzled with scrumptious caramel syrup'
    ..option = ['Oat Milk', 'Soy Milk', 'Almond Milk']
    ..ratingStar = 4.3
    ..cateId = 4,
  ProductModel()
    ..name = 'Cinnamon & Cocoa'
    ..title = 'Drizzled with Caramel'
    ..image =
        'https://neurosciencenews.com/files/2023/06/coffee-brain-caffeine-neuroscincces.jpg'
    ..price = 299
    ..description =
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly '
            'sweetened cocoa powder and drizzled with scrumptious caramel syrup sweetened cocoa '
            'powder and drizzled with scrumptious caramel syrup '
    ..option = ['Oat Milk', 'Soy Milk', 'Almond Milk']
    ..ratingStar = 4.3
    ..cateId = 1,
  ProductModel()
    ..name = 'Drizzled with Caramel'
    ..title = 'Drizzled with Caramel'
    ..image =
        'https://cdn.cnn.com/cnnnext/dam/assets/150929101049-black-coffee-stock-super-tease.jpg'
    ..price = 239
    ..description =
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly '
            'sweetened cocoa powder and drizzled with scrumptious caramel syrup sweetened cocoa '
            'powder and drizzled with scrumptious caramel syrup '
    ..option = ['Oat Milk', 'Soy Milk', 'Almond Milk']
    ..ratingStar = 4.9
    ..cateId = 3,
  ProductModel()
    ..name = 'Bursting Blueberry'
    ..title = 'Drizzled with Caramel'
    ..image =
        'https://cdn.cnn.com/cnnnext/dam/assets/150929101049-black-coffee-stock-super-tease.jpg'
    ..price = 199
    ..description =
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly '
            'sweetened cocoa powder and drizzled with scrumptious caramel syrup sweetened cocoa '
            'powder and drizzled with scrumptious caramel syrup '
    ..option = ['Oat Milk', 'Soy Milk', 'Almond Milk']
    ..ratingStar = 5.0
    ..cateId = 4,
  ProductModel()
    ..name = 'Cinnamon & Cocoa'
    ..title = 'Drizzled with Caramel'
    ..image =
        'https://www.adityabirlacapital.com/healthinsurance/active-together/wp-content/uploads/2019/12/How-Are-Espressos-Good-For-Health_blog_lower_1-1200x1200.png'
    ..price = 529
    ..description =
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly '
            'sweetened cocoa powder and drizzled with scrumptious caramel syrup sweetened cocoa '
            'powder and drizzled with scrumptious caramel syrup '
    ..option = ['Oat Milk', 'Soy Milk', 'Almond Milk']
    ..ratingStar = 4.3
    ..cateId = 2,
  ProductModel()
    ..name = 'Cinnamon & Cocoa'
    ..title = 'Drizzled with Caramel'
    ..image =
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/1200px-A_small_cup_of_coffee.JPG'
    ..price = 1299
    ..description =
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly '
            'sweetened cocoa powder and drizzled with scrumptious caramel syrup sweetened cocoa '
            'powder and drizzled with scrumptious caramel syrup '
    ..option = ['Oat Milk', 'Soy Milk', 'Almond Milk']
    ..ratingStar = 4.8
    ..cateId = 2,
  ProductModel()
    ..name = 'Cinnamon & Cocoa'
    ..title = 'Drizzled with Caramel'
    ..image = 'https://vaya.in/recipes/wp-content/uploads/2018/05/Coffee.jpg'
    ..price = 499
    ..description =
        'A single espresso shot poured into hot foamy milk, with the surface topped with mildly '
            'sweetened cocoa powder and drizzled with scrumptious caramel syrup sweetened cocoa '
            'powder and drizzled with scrumptious caramel syrup'
    ..option = ['Oat Milk', 'Soy Milk', 'Almond Milk']
    ..ratingStar = 4.3
    ..cateId = 4
];

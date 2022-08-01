import 'package:app_1/src/models/item_model.dart';

ItemModel aplle = ItemModel(
  itemName: 'maça',
  imgUrl: 'assets/fruits/apple.png',
  unit: 'kg',
  price: 5.5,
  description: 'melhor mça do mundo vermelhinha com o melhor preço ',
);
ItemModel grape = ItemModel(
  itemName: 'uva',
  imgUrl: 'assets/fruits/grape.png',
  unit: 'kg',
  price: 5.5,
  description: 'melhor uva do mundo vermelhinha com o melhor preço ',
);
ItemModel guava = ItemModel(
  itemName: 'goiba',
  imgUrl: 'assets/fruits/guava.png',
  unit: 'kg',
  price: 7.5,
  description: 'melhor goiba do mundo vermelhinha com o melhor preço ',
);
ItemModel kiwi = ItemModel(
  itemName: 'kiwi',
  imgUrl: 'assets/fruits/kiwi.png',
  unit: 'kg',
  price: 1.5,
  description: 'melhor kiwi do mundo vermelhinha com o melhor preço ',
);
ItemModel manga = ItemModel(
  itemName: 'manga',
  imgUrl: 'assets/fruits/mango.png',
  unit: 'kg',
  price: 5.5,
  description: 'melhor manga do mundo vermelhinha com o melhor preço ',
);
ItemModel papaya = ItemModel(
  itemName: 'mamão',
  imgUrl: 'assets/fruits/papaya.png',
  unit: 'kg',
  price: 6.5,
  description: 'melhor mamão  do mundo vermelhinha com o melhor preço ',
);

List<ItemModel> items = [
  aplle,
  grape,
  guava,
  kiwi,
  papaya,
  manga,
];
 List<String> categorias = [
    'Frutas',
    'Legumes',
    'Verduras',
    'Temperos',
    'Cerais',
  ];
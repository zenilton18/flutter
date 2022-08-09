import 'package:app_1/src/models/item_model.dart';

class ItemCarrinho {
  ItemModel item;
  int quantidade;

  ItemCarrinho({
    required this.item,
    required this.quantidade,
  });

  double  totalprice() {
   return  item.price * quantidade;
  }
}

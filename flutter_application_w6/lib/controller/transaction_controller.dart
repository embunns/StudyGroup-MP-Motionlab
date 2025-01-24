import 'package:get/get.dart';

class TransactionController extends GetxController {
  final RxString invoiceNumber = '000085752257'.obs;
  final RxString transactionDate = '16 June 2023'.obs;
  final RxString paymentMethod = 'Bank Transfer'.obs;
  final RxString orderName = 'Indra Mahesa'.obs;
  final RxString orderEmail = 'indramahesa@gmail.com'.obs;
  final RxString totalPrice = '\$66.00'.obs;
}

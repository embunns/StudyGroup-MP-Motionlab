import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../controller/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Invoice',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black, size: 33),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 240,
                  width: 240,
                  child: Lottie.asset(
                    'assets/images/checklist.json',
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 16,
                  right: 16,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Colors.white,
                    elevation: 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        'Transaction Success',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            _buildTransactionDetails(),
            _buildOrderDetails(),
            const SizedBox(height: 12),
            _buildBackToHomeButton(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionDetails() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.white,
      elevation: 0.3,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Obx(() => Text(
                  controller.totalPrice.value,
                  style: const TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const Divider(height: 30),
            Obx(() => _buildRow('Invoice Number', controller.invoiceNumber.value)),
            Obx(() => _buildRow('Transaction Date', controller.transactionDate.value)),
            Obx(() => _buildRow('Payment Method', controller.paymentMethod.value)),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderDetails() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.white,
      elevation: 0.3,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Detail Pesanan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 18),
            Obx(() => _buildRow('Order Name', controller.orderName.value)),
            Obx(() => _buildRow('Order Email', controller.orderEmail.value)),
            Obx(() => _buildRow('Total Price', controller.totalPrice.value)),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildBackToHomeButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () => Get.offNamed('/home'),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff00623B),
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Back to Home',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

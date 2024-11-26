import 'dart:io';

void main() {
  double saldo = 0.0;
  List<String> riwayatTransaksi = [];

  while (true) {
    printMenu();
    String? pilihan = getUserInput('Pilih menu (1-5): ');

    switch (pilihan) {
      case '1':
        cekSaldo(saldo);
        break;
      case '2':
        saldo = depositSaldo(saldo, riwayatTransaksi);
        break;
      case '3':
        saldo = tarikSaldo(saldo, riwayatTransaksi);
        break;
      case '4':
        lihatRiwayatTransaksi(riwayatTransaksi);
        break;
      case '5':
        keluar();
        return;
      default:
        print('Pilihan tidak valid. Silakan coba lagi.');
    }
  }
}

void printMenu() {
  print('\n======= Aplikasi Bank =======');
  print('1. Cek Saldo');
  print('2. Deposit Saldo');
  print('3. Tarik Saldo');
  print('4. Lihat Riwayat Transaksi');
  print('5. Keluar');
}

String? getUserInput(String prompt) {
  stdout.write(prompt);
  return stdin.readLineSync();
}

void cekSaldo(double saldo) {
  print('\nSaldo Anda saat ini: Rp${saldo.toStringAsFixed(2)}');
}

double depositSaldo(double saldo, List<String> riwayatTransaksi) {
  double deposit = getValidAmount('Masukkan jumlah deposit: Rp');
  if (deposit > 0) {
    saldo += deposit;
    riwayatTransaksi.add('Deposit: Rp${deposit.toStringAsFixed(2)}');
    print('Berhasil menambah saldo. Saldo Anda sekarang: Rp${saldo.toStringAsFixed(2)}');
  } else {
    print('Input tidak valid. Masukkan jumlah yang benar.');
  }
  return saldo;
}

double tarikSaldo(double saldo, List<String> riwayatTransaksi) {
  double tarik = getValidAmount('Masukkan jumlah penarikan: Rp');
  if (tarik > 0 && tarik <= saldo) {
    saldo -= tarik;
    riwayatTransaksi.add('Penarikan: Rp${tarik.toStringAsFixed(2)}');
    print('Berhasil menarik saldo. Saldo Anda sekarang: Rp${saldo.toStringAsFixed(2)}');
  } else if (tarik > saldo) {
    print('Saldo tidak mencukupi untuk penarikan sebesar Rp${tarik.toStringAsFixed(2)}.');
  } else {
    print('Input tidak valid. Masukkan jumlah yang benar.');
  }
  return saldo;
}

void lihatRiwayatTransaksi(List<String> riwayatTransaksi) {
  if (riwayatTransaksi.isEmpty) {
    print('Tidak ada riwayat transaksi.');
  } else {
    print('\nRiwayat Transaksi:');
    for (var transaksi in riwayatTransaksi) {
      print(transaksi);
    }
  }
}

void keluar() {
  print('Terima kasih telah menggunakan layanan kami!');
  exit(0);
}

double getValidAmount(String prompt) {
  double? amount;
  while (true) {
    String? input = getUserInput(prompt);
    amount = double.tryParse(input ?? '');
    if (amount != null && amount > 0) {
      break;
    } else {
      print('Input tidak valid, harap masukkan jumlah yang benar.');
    }
  }
  return amount;
}

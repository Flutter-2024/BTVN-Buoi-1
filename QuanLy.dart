import 'dart:io';

import 'NhanVien.dart';
import 'NhanVienKinhDoanh.dart';
import 'NhanVienLapTrinh.dart';

class QuanLy {
  List<NhanVien> dsNV = [];

  QuanLy(this.dsNV);

  void run() {
    while (true) {
      menu();
      print('Nhap lua chon: ');
      var choice = stdin.readLineSync();

      switch (choice != null ? int.parse(choice) : 0) {
        case 1:
          inThongTin();
          break;
        case 2:
          themNhanVien();
          break;
        case 3:
          suaNhanVien();
          break;
        case 4:
          xoaNhanVien();
          break;
        case 0:
          return;
        default:
          print('Nhap sai, nhap lai');
      }
    }
  }

  void menu() {
    print('1. In thong tin');
    print('2. Them nhan vien');
    print('3. Sua nhan vien');
    print('4. Xoa nhan vien');
    print('0. Thoat');
  }

  void inThongTin() {
    print(
        "maNV\thoTen\t\t\tngaySinh\tsoDT\t\tdiaChi\tluongCung\tdoanhSo/level\trealSalary");
    for (var nv in dsNV) {
      print(nv);
    }
  }

  void themNhanVien() {
    print('Nhap loai nhan vien:\n' + '1: Lap trinh\n' + '2: Kinh doanh');

    var loaiNV = stdin.readLineSync();
    while (int.tryParse(loaiNV!) == null) {
      print('Nhap sai, nhap lai');
      loaiNV = stdin.readLineSync();
    }

    print('Nhap ho ten: ');
    var hoTen = stdin.readLineSync();
    print('Nhap ngay sinh: ');
    var ngaySinh = stdin.readLineSync();
    print('Nhap so dien thoai: ');
    var soDT = stdin.readLineSync();
    print('Nhap dia chi: ');
    var diaChi = stdin.readLineSync();

    print('Nhap luong: ');
    var luong = stdin.readLineSync();
    while (double.tryParse(luong!) == null) {
      print('Nhap sai, nhap lai');
      luong = stdin.readLineSync();
    }

    if (int.parse(loaiNV) == 1) {
      print('Nhap level: ');
      var level = stdin.readLineSync();
      while (int.tryParse(level!) == null) {
        print('Nhap sai, nhap lai');
        level = stdin.readLineSync();
      }

      dsNV.add(NhanVienLapTrinh(
          hoTen: hoTen!,
          ngaySinh: ngaySinh!,
          soDT: soDT!,
          diaChi: diaChi!,
          luong: double.parse(luong),
          level: int.parse(level)));
    } else {
      print('Nhap doanh so: ');
      var doanhSo = stdin.readLineSync();
      while (int.tryParse(doanhSo!) == null) {
        print('Nhap sai, nhap lai');
        doanhSo = stdin.readLineSync();
      }

      dsNV.add(NhanVienKinhDoanh(
          hoTen: hoTen!,
          ngaySinh: ngaySinh!,
          soDT: soDT!,
          diaChi: diaChi!,
          luong: double.parse(luong),
          doanhSo: int.parse(doanhSo)));
    }
  }

  void suaNhanVien() {}

  void xoaNhanVien() {}
}

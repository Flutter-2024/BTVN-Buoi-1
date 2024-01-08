import 'dart:io';

import 'Data.dart';
import 'NhanVien.dart';
import 'QuanLyThangLuong.dart';

class QuanLy {
  List<NhanVien> dsNV = [];

  QuanLy(this.dsNV);

  void inThongTin() {
    print(
        "maNV\thoTen\t\t\tngaySinh\tsoDT\t\tdiaChi\tluongCung\tdoanhSo/level\trealSalary");
    for (var nv in dsNV) {
      print(nv);
    }
  }

  void xemBangLuong() {
    print("Nhap thang:");
    String? thang = stdin.readLineSync();
    var quanLyLuong = QuanLyThangLuong(dsNV: dsNV, thang: thang!);
    quanLyLuong.inThongTinLuong();
  }
}

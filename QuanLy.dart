import 'dart:io';

import 'Data.dart';
import 'NhanVien.dart';
import 'NhanVienKinhDoanh.dart';


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
    print("*** BANG LUONG THANG $thang ***");
    print("maNV\thoTen\t\t\trealSalary");
    for (var nv in dsNV) {
      if (nv is NhanVienKinhDoanh) {
        if (nv.thang == thang) {
          print(nv.maNV + "   " + nv.hoTen + "    " + nv.realSalary.toString());
        }
      } else
        print(nv.maNV + "   " + nv.hoTen + "    " + nv.realSalary.toString());
    }
  }
}


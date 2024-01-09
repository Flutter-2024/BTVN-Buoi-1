import 'dart:io';

import 'Data.dart';
import 'NhanVien.dart';
import 'QuanLyThangLuong.dart';


class QuanLy {
  List<NhanVien> dsNV = [];

  QuanLy(this.dsNV);

  void run() {
    while (true) {
      menu();

      String choice = '';
      do {
        print('Nhap lua chon: ');
        choice = stdin.readLineSync() ?? '';
      } while (choice.isEmpty || int.tryParse(choice) == null);

      switch (int.parse(choice)) {
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
          print('Nhap sai, nhap lai: ');
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

  String readInput(String message) {
    String? input;
    do {
      print(message);
      input = stdin.readLineSync() ?? '';
    } while (input.isEmpty);
    return input;
  }

  void themNhanVien() {
    print('Nhap loai nhan vien:\n' + '1: Lap trinh\n' + '2: Kinh doanh');
    String loaiNV = stdin.readLineSync() ?? '';
    while (loaiNV.isEmpty ||
        int.tryParse(loaiNV) == null ||
        (int.parse(loaiNV) != 1 && int.parse(loaiNV) != 2)) {
      print('Nhap sai, nhap lai: ');
      loaiNV = stdin.readLineSync() ?? '';
    }

    String hoTen = readInput("Nhap ho ten: ");
    String ngaySinh = readInput("Nhap ngay sinh: ");
    String soDT = readInput("Nhap so dien thoai: ");
    String diaChi = readInput("Nhap dia chi: ");

    String luong;
    do {
      print('Nhap luong: ');
      luong = stdin.readLineSync() ?? '';
    } while (luong.isEmpty || double.tryParse(luong) == null);

    if (int.parse(loaiNV) == 1) {
      String level;
      do {
        print('Nhap level: ');
        level = stdin.readLineSync() ?? '';
      } while (level.isEmpty || int.tryParse(level) == null);

      dsNV.add(NhanVienLapTrinh(
          hoTen: hoTen,
          ngaySinh: ngaySinh,
          soDT: soDT,
          diaChi: diaChi,
          luong: double.parse(luong),
          level: int.parse(level)));
    } else {
      String doanhSo;
      do {
        print('Nhap doanh so: ');
        doanhSo = stdin.readLineSync() ?? '';
      } while (doanhSo.isEmpty || int.tryParse(doanhSo) == null);

      dsNV.add(NhanVienKinhDoanh(
          hoTen: hoTen,
          ngaySinh: ngaySinh,
          soDT: soDT,
          diaChi: diaChi,
          luong: double.parse(luong),
          doanhSo: int.parse(doanhSo)));
    }
  }

  void suaNhanVien() {
    String maNV = readInput("Nhap ma nhan vien can sua: ");

    var index = dsNV.indexWhere((nv) => nv.maNV == maNV);
    if (index == -1) {
      print('Khong tim thay nhan vien');
      return;
    }

    String hoTen = readInput("Nhap ho ten: ");
    String ngaySinh = readInput("Nhap ngay sinh: ");
    String soDT = readInput("Nhap so dien thoai: ");
    String diaChi = readInput("Nhap dia chi: ");

    String luong;
    do {
      print('Nhap luong: ');
      luong = stdin.readLineSync() ?? '';
    } while (luong.isEmpty || double.tryParse(luong) == null);

    if (dsNV[index] is NhanVienLapTrinh) {
      String level;
      do {
        print('Nhap level: ');
        level = stdin.readLineSync() ?? '';
      } while (level.isEmpty || int.tryParse(level) == null);

      dsNV[index].hoTen = hoTen;
      dsNV[index].ngaySinh = ngaySinh;
      dsNV[index].soDT = soDT;
      dsNV[index].diaChi = diaChi;
      dsNV[index].luong = double.parse(luong);
      (dsNV[index] as NhanVienLapTrinh).level = int.parse(level);
    } else {
      String doanhSo;
      do {
        print('Nhap doanh so: ');
        doanhSo = stdin.readLineSync() ?? '';
      } while (doanhSo.isEmpty || int.tryParse(doanhSo) == null);

      dsNV[index].hoTen = hoTen;
      dsNV[index].ngaySinh = ngaySinh;
      dsNV[index].soDT = soDT;
      dsNV[index].diaChi = diaChi;
      dsNV[index].luong = double.parse(luong);
      (dsNV[index] as NhanVienKinhDoanh).doanhSo = int.parse(doanhSo);
    }
  }

  void xoaNhanVien() {
    String maNV = readInput("Nhap ma nhan vien can xoa: ");
    dsNV.removeWhere((nv) => nv.maNV == maNV);
  }
  
  void xemBangLuong() {
    print("Nhap thang:");
    String? thang = stdin.readLineSync();
    if (thang != null){
      var quanLyLuong = QuanLyThangLuong(dsNV: dsNV, thang: thang!);
      quanLyLuong.inThongTinLuong();
    }
    else print("Error");
  }
}

  

  


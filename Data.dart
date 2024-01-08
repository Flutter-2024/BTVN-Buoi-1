import 'NhanVien.dart';
import 'NhanVienKinhDoanh.dart';
import 'NhanVienLapTrinh.dart';

class Data {
  List<NhanVien> getData() {
    List<NhanVien> dsNV = [];
    dsNV.add(NhanVienLapTrinh(
        hoTen: 'Nguyen Van A',
        ngaySinh: '01/01/1990',
        soDT: '0123456789',
        diaChi: 'Ha Noi',
        luong: 1000,
        level: 1));
    dsNV.add(NhanVienLapTrinh(
        hoTen: 'Nguyen Van B',
        ngaySinh: '01/01/1990',
        soDT: '0123456789',
        diaChi: 'Ha Noi',
        luong: 1000,
        level: 2));
    dsNV.add(NhanVienLapTrinh(
        hoTen: 'Nguyen Van C',
        ngaySinh: '01/01/1990',
        soDT: '0123456789',
        diaChi: 'Ha Noi',
        luong: 1000,
        level: 3));
    dsNV.add(NhanVienLapTrinh(
        hoTen: 'Nguyen Van E',
        ngaySinh: '01/01/1990',
        soDT: '0123456789',
        diaChi: 'Ha Noi',
        luong: 1000,
        level: 4));

    dsNV.add(NhanVienKinhDoanh(
        hoTen: 'Nguyen Van D',
        ngaySinh: '01/01/1990',
        soDT: '0123456789',
        diaChi: 'Ha Noi',
        luong: 1000,
        doanhSo: 100));
    dsNV.add(NhanVienKinhDoanh(
        hoTen: 'Nguyen Van F',
        ngaySinh: '01/01/1990',
        soDT: '0123456789',
        diaChi: 'Ha Noi',
        luong: 1000,
        doanhSo: 200));
    dsNV.add(NhanVienKinhDoanh(
        hoTen: 'Nguyen Van G',
        ngaySinh: '01/01/1990',
        soDT: '0123456789',
        diaChi: 'Ha Noi',
        luong: 1000,
        doanhSo: 300));

    return dsNV;
  }
}

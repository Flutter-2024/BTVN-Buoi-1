import 'Data.dart';
import 'NhanVien.dart';

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
}

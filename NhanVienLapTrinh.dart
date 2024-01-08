import 'NhanVien.dart';

class NhanVienLapTrinh extends NhanVien {
  int level;
  NhanVienLapTrinh(
      {required String hoTen,
      required String ngaySinh,
      required String soDT,
      required String diaChi,
      required double luong,
      required this.level})
      : super(
            hoTen: hoTen,
            ngaySinh: ngaySinh,
            soDT: soDT,
            diaChi: diaChi,
            luong: luong) {
    maNV = maNV;
  }
  @override
  set maNV(String _maNV) {
    super.maNV = 'LT' + _maNV.toString().padLeft(3, '0');
  }

  @override
  String toString() {
    return super.toString() + '\t$level\t$realSalary';
  }

  double calculateSalary() {
    return 0;
  }
}

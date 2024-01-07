import 'NhanVien.dart';

class NhanVienKinhDoanh extends NhanVien {
  int doanhSo;
  NhanVienKinhDoanh(
      {required String hoTen,
      required String ngaySinh,
      required String soDT,
      required String diaChi,
      required double luong,
      required this.doanhSo})
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
    super.maNV = 'KD' + _maNV.toString().padLeft(3, '0');
  }

  @override
  String toString() {
    return super.toString() + '\t$doanhSo';
  }
}
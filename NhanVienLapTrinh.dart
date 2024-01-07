import 'NhanVien.dart';

class NhanVienLapTrinh extends NhanVien{
  int level;
  NhanVienLapTrinh(String hoTen, String ngaySinh, String soDT, String diaChi, double luong, this.level) : super(hoTen, ngaySinh, soDT, diaChi, luong){
    maNV = maNV;
  }
  @override
  set maNV(String _maNV) {
    super.maNV = 'LT' + _maNV.toString().padLeft(3, '0');
  }
  @override
  String toString() {
    return super.toString() + '\t$level';
  }

}
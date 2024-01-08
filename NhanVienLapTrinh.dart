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
  double get realSalary{
    if(level == 1){
      return luong + 100;
    }
    else if(level == 2){
      return luong + 200;
    }
    else if(level == 3){
      return luong + 300;
    }
    else if(level == 4){
      return luong + 400;
    }
    else {
      return luong;
    }
  }
  @override
  String toString() {
    return super.toString() + '\t$level' + '\t$realSalary';
  }
}
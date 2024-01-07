import 'NhanVien.dart';

class NhanVienKinhDoanh extends NhanVien {
    int doanhSo;
    NhanVienKinhDoanh(String hoTen, String ngaySinh, String soDT, String diaChi, double luong, this.doanhSo) : super(hoTen, ngaySinh, soDT, diaChi, luong){
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
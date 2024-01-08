import 'NhanVien.dart';
import 'QuanLy.dart';

class QuanLyThangLuong extends QuanLy {
  String thang;

  QuanLyThangLuong({required dsNV, required this.thang,}) : super(dsNV);

  void inThongTinLuong() {
    print("*** BANG LUONG THANG $thang ***");
    print("maNV\thoTen\t\t\trealSalary");
    for (var nv in dsNV) {
      print(nv.maNV + "   " + nv.hoTen + "    " + nv.realSalary.toString());
    }
  }
}

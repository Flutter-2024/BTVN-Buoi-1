import 'NhanVien.dart';
import 'NhanVienKinhDoanh.dart';
import 'NhanVienLapTrinh.dart';

class Data{
  List<NhanVien> getData(){
    List<NhanVien> dsNV = [];
    dsNV.add(NhanVienLapTrinh('Nguyen Van A', '01/01/1990', '0123456789', 'Ha Noi', 1000, 1));
    dsNV.add(NhanVienLapTrinh('Nguyen Van B', '01/01/1990', '0123456789', 'Ha Noi', 2000, 2));
    dsNV.add(NhanVienLapTrinh('Nguyen Van C', '01/01/1990', '0123456789', 'Ha Noi', 3000, 3));
    dsNV.add(NhanVienLapTrinh('Nguyen Van D', '01/01/1990', '0123456789', 'Ha Noi', 4000, 4));
    dsNV.add(NhanVienLapTrinh('Nguyen Van E', '01/01/1990', '0123456789', 'Ha Noi', 5000, 5));
    dsNV.add(NhanVienLapTrinh('Nguyen Van F', '01/01/1990', '0123456789', 'Ha Noi', 6000, 6));
    dsNV.add(NhanVienLapTrinh('Nguyen Van G', '01/01/1990', '0123456789', 'Ha Noi', 7000, 7));
    dsNV.add(NhanVienLapTrinh('Nguyen Van H', '01/01/1990', '0123456789', 'Ha Noi', 8000, 8));
    dsNV.add(NhanVienLapTrinh('Nguyen Van I', '01/01/1990', '0123456789', 'Ha Noi', 9000, 9));
    dsNV.add(NhanVienLapTrinh('Nguyen Van J', '01/01/1990', '0123456789', 'Ha Noi', 10000, 10));

    dsNV.add(NhanVienKinhDoanh('Nguyen Van K', '01/01/1990', '0123456789', 'Ha Noi', 1000, 100));
    dsNV.add(NhanVienKinhDoanh('Nguyen Van L', '01/01/1990', '0123456789', 'Ha Noi', 2000, 200));
    dsNV.add(NhanVienKinhDoanh('Nguyen Van M', '01/01/1990', '0123456789', 'Ha Noi', 3000, 300));
    dsNV.add(NhanVienKinhDoanh('Nguyen Van N', '01/01/1990', '0123456789', 'Ha Noi', 4000, 400));
    dsNV.add(NhanVienKinhDoanh('Nguyen Van O', '01/01/1990', '0123456789', 'Ha Noi', 5000, 500));
    dsNV.add(NhanVienKinhDoanh('Nguyen Van P', '01/01/1990', '0123456789', 'Ha Noi', 6000, 600));
    dsNV.add(NhanVienKinhDoanh('Nguyen Van Q', '01/01/1990', '0123456789', 'Ha Noi', 7000, 700));
    dsNV.add(NhanVienKinhDoanh('Nguyen Van R', '01/01/1990', '0123456789', 'Ha Noi', 8000, 800));
    dsNV.add(NhanVienKinhDoanh('Nguyen Van S', '01/01/1990', '0123456789', 'Ha Noi', 9000, 900));
    dsNV.add(NhanVienKinhDoanh('Nguyen Van T', '01/01/1990', '0123456789', 'Ha Noi', 10000, 1000));

    return dsNV;
  }
}
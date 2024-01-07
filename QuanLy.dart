import 'Data.dart';
import 'NhanVien.dart';

class QuanLy{
    List<NhanVien> dsNV = [];
    QuanLy(this.dsNV);
    void inThongTin(){
        for(var nv in dsNV){
            print(nv);
        }
    }
}
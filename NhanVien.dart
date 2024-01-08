abstract class NhanVien {
  static int maNVCount = 1;
  String maNV = '${maNVCount++}';
  String hoTen;
  String ngaySinh;
  String soDT;
  String diaChi;
  double luong;
  double realSalary = 0;
  NhanVien(
      {required this.hoTen,
      required this.ngaySinh,
      required this.soDT,
      required this.diaChi,
      required this.luong});
  @override
  String toString() {
    return '$maNV\t$hoTen\t$ngaySinh\t$soDT\t$diaChi\t$luong';
  }

  double calculateSalary();
}

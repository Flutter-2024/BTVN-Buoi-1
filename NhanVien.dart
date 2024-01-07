class NhanVien{
  static int maNVCount = 1;
  String maNV = '${maNVCount++}';
  String hoTen;
  String ngaySinh;
  String soDT;
  String diaChi;
  double luong;
  NhanVien(this.hoTen, this.ngaySinh, this.soDT, this.diaChi, this.luong);
  @override
  String toString() {
    return '$maNV\t$hoTen\t$ngaySinh\t$soDT\t$diaChi\t$luong';
  }
}
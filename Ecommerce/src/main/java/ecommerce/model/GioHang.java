package ecommerce.model;

public class GioHang {
	private SanPham sanPham;
	private int soLuong;
	private float tongTien;
	
	
	public GioHang() {
		
	}
	
	public GioHang(SanPham sanPham, int soLuong, float tongTien) {
		this.sanPham = sanPham;
		this.soLuong = soLuong;
		this.tongTien = tongTien;
	}
	
	public SanPham getSanPham() {
		return sanPham;
	}
	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	public float getTongTien() {
		return tongTien;
	}
	public void setTongTien(float tongTien) {
		this.tongTien = tongTien;
	}
	
	
}

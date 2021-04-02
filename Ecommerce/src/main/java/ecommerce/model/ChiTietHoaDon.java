package ecommerce.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ChiTietHoaDon")
public class ChiTietHoaDon {
	private int Id;
	private String hoaDonId;
	private int SanPhamId;
	private int soLuong;
	private float giaTien;
	
	private SanPham sanPham;
	
	//many to one
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "SanPhamId", insertable = false, updatable = false)
	public SanPham getSanPham() {
		return sanPham;
	}
	public void setSanPham(SanPham sanPham) {
		this.sanPham = sanPham;
	}
	
	
	@Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="Id", unique = true, nullable = false)
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	
	@Column(name = "HoaDonId", nullable = true)
	public String getHoaDonId() {
		return hoaDonId;
	}
	public void setHoaDonId(String hoaDonId) {
		this.hoaDonId = hoaDonId;
	}
	
	@Column(name = "SanPhamId", nullable = true)
	public int getSanPhamId() {
		return SanPhamId;
	}
	public void setSanPhamId(int sanPhamId) {
		SanPhamId = sanPhamId;
	}
	
	@Column(name = "SoLuong", nullable = true)
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	
	@Column(name = "GiaTien", nullable = true)
	public float getGiaTien() {
		return giaTien;
	}
	public void setGiaTien(float giaTien) {
		this.giaTien = giaTien;
	}
	
}

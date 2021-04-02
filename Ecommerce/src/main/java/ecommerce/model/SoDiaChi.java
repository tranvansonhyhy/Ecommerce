package ecommerce.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "SoDiaChi")
public class SoDiaChi {
	private String Id;
	private int khachHangId;
	private String hoTen;
	private String email;
	private String dienThoai;
	private String tinh;
	private String huyen;
	private String xa;
	private String diaChi;
	
	private DiaChi tinh2;
	
	private DiaChi huyen2;
	
	private DiaChi xa2;
	
	//many to one
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Tinh", insertable = false, updatable = false)
	public DiaChi getTinh2() {
		return tinh2;
	}
	public void setTinh2(DiaChi tinh2) {
		this.tinh2 = tinh2;
	}
	
	//many to one
		@ManyToOne(fetch = FetchType.LAZY)
		@JoinColumn(name = "Huyen", insertable = false, updatable = false)
	public DiaChi getHuyen2() {
		return huyen2;
	}
	public void setHuyen2(DiaChi huyen2) {
		this.huyen2 = huyen2;
	}
	
	//many to one
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "Xa", insertable = false, updatable = false)
	public DiaChi getXa2() {
		return xa2;
	}
	public void setXa2(DiaChi xa2) {
		this.xa2 = xa2;
	}
	@Id
	@Column(name="Id", unique = true, nullable = false)
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	
	@Column(name = "KhachHangId", nullable = true)
	public int getKhachHangId() {
		return khachHangId;
	}
	public void setKhachHangId(int khachHangId) {
		this.khachHangId = khachHangId;
	}
	
	@Column(name = "HoTen", nullable = true)
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	
	@Column(name = "Email", nullable = true)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name = "DienThoai", nullable = true)
	public String getDienThoai() {
		return dienThoai;
	}
	public void setDienThoai(String dienThoai) {
		this.dienThoai = dienThoai;
	}
	
	@Column(name = "Tinh", nullable = true)
	public String getTinh() {
		return tinh;
	}
	public void setTinh(String tinh) {
		this.tinh = tinh;
	}
	
	@Column(name = "Huyen", nullable = true)
	public String getHuyen() {
		return huyen;
	}
	public void setHuyen(String huyen) {
		this.huyen = huyen;
	}
	
	@Column(name = "Xa", nullable = true)
	public String getXa() {
		return xa;
	}
	public void setXa(String xa) {
		this.xa = xa;
	}
	
	@Column(name = "DiaChi", nullable = true)
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
}

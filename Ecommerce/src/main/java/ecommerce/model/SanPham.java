package ecommerce.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SanPham")
public class SanPham implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8820024332558109315L;
	private int Id;
	private String maSanPham;
	private String tenSanPham;
	private String kichThuoc;
	private String mauSac;
	private float giaTien;
	private int soLuong;
	private String moTa;
	private int danhMucId;
	private int loaiSPId;
	private int hangSXId;
	private int xuatXuId;
	private Date ngayTao;
	private Date ngayCapNhat;
	private Date ngayXoa;
	private String anh;
	
	
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Id", unique = true, nullable = false)
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	
	@Column(name = "MaSanPham", nullable = true)
	public String getMaSanPham() {
		return maSanPham;
	}
	public void setMaSanPham(String maSanPham) {
		this.maSanPham = maSanPham;
	}
	
	@Column(name = "TenSanPham", nullable = true)
	public String getTenSanPham() {
		return tenSanPham;
	}
	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}
	
	@Column(name = "KichThuoc", nullable = true)
	public String getKichThuoc() {
		return kichThuoc;
	}
	public void setKichThuoc(String kichThuoc) {
		this.kichThuoc = kichThuoc;
	}
	
	@Column(name = "MauSac", nullable = true)
	public String getMauSac() {
		return mauSac;
	}
	public void setMauSac(String mauSac) {
		this.mauSac = mauSac;
	}
	
	@Column(name = "GiaTien", nullable = true)
	public float getGiaTien() {
		return giaTien;
	}
	public void setGiaTien(float giaTien) {
		this.giaTien = giaTien;
	}
	
	@Column(name = "SoLuong", nullable = true)
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	
	@Column(name = "MoTa", nullable = true)
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	
	@Column(name = "DanhMucId", nullable = true)
	public int getDanhMucId() {
		return danhMucId;
	}
	public void setDanhMucId(int danhMucId) {
		this.danhMucId = danhMucId;
	}
	
	@Column(name = "LoaiSPId", nullable = true)
	public int getLoaiSPId() {
		return loaiSPId;
	}
	public void setLoaiSPId(int loaiSPId) {
		this.loaiSPId = loaiSPId;
	}
	
	@Column(name = "HangSXId", nullable = true)
	public int getHangSXId() {
		return hangSXId;
	}
	public void setHangSXId(int hangSXId) {
		this.hangSXId = hangSXId;
	}
	
	@Column(name = "XuatXuId", nullable = true)
	public int getXuatXuId() {
		return xuatXuId;
	}
	public void setXuatXuId(int xuatXuId) {
		this.xuatXuId = xuatXuId;
	}
	
	@Column(name = "NgayTao", nullable = true)
	public Date getNgayTao() {
		return ngayTao;
	}
	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}
	
	@Column(name = "NgayCapNhat", nullable = true)
	public Date getNgayCapNhat() {
		return ngayCapNhat;
	}
	public void setNgayCapNhat(Date ngayCapNhat) {
		this.ngayCapNhat = ngayCapNhat;
	}
	
	@Column(name = "NgayXoa", nullable = true)
	public Date getNgayXoa() {
		return ngayXoa;
	}
	public void setNgayXoa(Date ngayXoa) {
		this.ngayXoa = ngayXoa;
	}
	
	@Column(name = "Anh", nullable = true)
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
}

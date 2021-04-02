package ecommerce.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "HoaDon")
public class HoaDon {
	private String Id;
	private int khachHangId;
	private Date ngayTao;
	private int tinhTrang;
	private float tongTien;
	private Date ngayCapNhat;
	private String DiaChiId;
	private int phuongThucThanhToan;
	private int trangThaiThanhToan;
	
	private TrangThaiThanhToan trangThaiThanhToan2;
	private TinhTrang tinhTrang2;
	private PhuongThucThanhToan phuongThucThanhToan2;
	
	@ManyToOne
	@JoinColumn(name = "TrangThaiThanhToan", insertable = false, updatable = false)
	public TrangThaiThanhToan getTrangThaiThanhToan2() {
		return trangThaiThanhToan2;
	}
	public void setTrangThaiThanhToan2(TrangThaiThanhToan trangThaiThanhToan2) {
		this.trangThaiThanhToan2 = trangThaiThanhToan2;
	}
	
	@ManyToOne
	@JoinColumn(name = "TinhTrang", insertable = false, updatable = false)
	public TinhTrang getTinhTrang2() {
		return tinhTrang2;
	}
	public void setTinhTrang2(TinhTrang tinhTrang2) {
		this.tinhTrang2 = tinhTrang2;
	}
	
	@ManyToOne
	@JoinColumn(name = "PhuongThucThanhToan", insertable = false, updatable = false)
	public PhuongThucThanhToan getPhuongThucThanhToan2() {
		return phuongThucThanhToan2;
	}
	public void setPhuongThucThanhToan2(PhuongThucThanhToan phuongThucThanhToan2) {
		this.phuongThucThanhToan2 = phuongThucThanhToan2;
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
	
	@Column(name = "NgayTao", nullable = true)
	public Date getNgayTao() {
		return ngayTao;
	}
	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}
	
	@Column(name = "TinhTrang", nullable = true)
	public int getTinhTrang() {
		return tinhTrang;
	}
	public void setTinhTrang(int tinhTrang) {
		this.tinhTrang = tinhTrang;
	}
	
	@Column(name = "TongTien", nullable = true)
	public float getTongTien() {
		return tongTien;
	}
	public void setTongTien(float tongTien) {
		this.tongTien = tongTien;
	}
	
	@Column(name = "NgayCapNhat", nullable = true)
	public Date getNgayCapNhat() {
		return ngayCapNhat;
	}
	public void setNgayCapNhat(Date ngayCapNhat) {
		this.ngayCapNhat = ngayCapNhat;
	}
	
	@Column(name = "DiaChiId", nullable = true)
	public String getDiaChiId() {
		return DiaChiId;
	}
	public void setDiaChiId(String diaChiId) {
		DiaChiId = diaChiId;
	}
	
	@Column(name = "PhuongThucThanhToan")
	public int getPhuongThucThanhToan() {
		return phuongThucThanhToan;
	}
	public void setPhuongThucThanhToan(int phuongThucThanhToan) {
		this.phuongThucThanhToan = phuongThucThanhToan;
	}
	
	@Column(name = "TrangThaiThanhToan", nullable = true)
	public int getTrangThaiThanhToan() {
		return trangThaiThanhToan;
	}
	public void setTrangThaiThanhToan(int trangThaiThanhToan) {
		this.trangThaiThanhToan = trangThaiThanhToan;
	}
	
	private String hoTen;
	
	@Transient
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
}

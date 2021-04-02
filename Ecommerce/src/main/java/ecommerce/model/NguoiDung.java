package ecommerce.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NguoiDung")
public class NguoiDung {
	private int Id;
	private String taiKhoan;
	private String matKhau;
	private String hoTen;
	private String email;
	private String dienThoai;
	private int vaiTroId;
	private String avatar;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Id", unique = true, nullable = false)
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	
	@Column(name = "TaiKhoan", nullable = true)
	public String getTaiKhoan() {
		return taiKhoan;
	}
	public void setTaiKhoan(String taiKhoan) {
		this.taiKhoan = taiKhoan;
	}
	@Column(name="MatKhau", nullable = true)
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	
	@Column(name="HoTen", nullable = true)
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	
	@Column(name="Email", nullable = true)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name="DienThoai", nullable = true)
	public String getDienThoai() {
		return dienThoai;
	}
	public void setDienThoai(String dienThoai) {
		this.dienThoai = dienThoai;
	}
	
	@Column(name="VaiTroId", nullable = true)
	public int getVaiTroId() {
		return vaiTroId;
	}
	public void setVaiTroId(int vaiTroId) {
		this.vaiTroId = vaiTroId;
	}
	
	@Column(name = "Avatar", nullable = true)
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
}

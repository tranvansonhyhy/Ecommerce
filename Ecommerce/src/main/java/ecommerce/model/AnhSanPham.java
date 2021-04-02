package ecommerce.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "AnhSanPham")
public class AnhSanPham {
	private int Id;
	private String anh;
	private String sanPhamId;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Id", unique = true, nullable = false)
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	
	@Column(name = "Anh", nullable = true)
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	
	@Column(name = "SanPhamId", nullable = true)
	public String getSanPhamId() {
		return sanPhamId;
	}
	public void setSanPhamId(String sanPhamId) {
		this.sanPhamId = sanPhamId;
	}
}

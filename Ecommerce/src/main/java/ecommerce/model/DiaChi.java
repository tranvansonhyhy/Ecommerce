package ecommerce.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "DiaChi")
public class DiaChi {
	private String Id;
	private String ten;
	private String maCha;
	
	@Id
	@Column(name="Id", unique = true, nullable = false)
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	
	@Column(name = "Ten", nullable = true)
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	
	@Column(name = "MaCha", nullable = true)
	public String getMaCha() {
		return maCha;
	}
	public void setMaCha(String maCha) {
		this.maCha = maCha;
	}
}

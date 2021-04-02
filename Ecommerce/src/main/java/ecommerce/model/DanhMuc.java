package ecommerce.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "DanhMuc")
public class DanhMuc {
	private int Id;
	private String tenDanhMuc;
	private int danhMucCha;
	private String moTa;
	
	
	private List<DanhMuc> lstDanhMuc;
	@Transient
	public List<DanhMuc> getLstDanhMuc() {
		return lstDanhMuc;
	}
	public void setLstDanhMuc(List<DanhMuc> lstDanhMuc) {
		this.lstDanhMuc = lstDanhMuc;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Id", unique = true, nullable = false)
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	
	@Column(name = "TenDanhMuc", nullable = true)
	public String getTenDanhMuc() {
		return tenDanhMuc;
	}
	public void setTenDanhMuc(String tenDanhMuc) {
		this.tenDanhMuc = tenDanhMuc;
	}
	
	@Column(name = "DanhMucCha", nullable = true)
	public int getDanhMucCha() {
		return danhMucCha;
	}
	public void setDanhMucCha(int danhMucCha) {
		this.danhMucCha = danhMucCha;
	}
	
	@Column(name = "MoTa", nullable = true)
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
}

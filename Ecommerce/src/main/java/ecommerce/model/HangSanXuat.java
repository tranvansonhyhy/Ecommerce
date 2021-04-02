package ecommerce.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "HangSanXuat")
public class HangSanXuat {
	private int Id;
	private String tenHangSX;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Id", unique = true, nullable = false)
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	
	@Column(name = "TenHangSX", nullable = true)
	public String getTenHangSX() {
		return tenHangSX;
	}
	public void setTenHangSX(String tenHangSX) {
		this.tenHangSX = tenHangSX;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Id;
		result = prime * result + ((tenHangSX == null) ? 0 : tenHangSX.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HangSanXuat other = (HangSanXuat) obj;
		if (Id != other.Id)
			return false;
		if (tenHangSX == null) {
			if (other.tenHangSX != null)
				return false;
		} else if (!tenHangSX.equals(other.tenHangSX))
			return false;
		return true;
	}
	
	
}

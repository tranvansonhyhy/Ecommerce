package ecommerce.service;

import java.util.List;

import ecommerce.model.NguoiDung;


public interface NguoiDungDao extends HanhDong<NguoiDung, Integer> {
	public NguoiDung ktraDN(String tenDangNhap);
	List<NguoiDung> timKiem(String tuKhoa,int vaiTroId);
}

package ecommerce.service;

import ecommerce.model.KhachHang;

public interface KhachHangDao extends HanhDong<KhachHang, Integer> {
	public KhachHang checkLogin(String tenDangNhap);
}

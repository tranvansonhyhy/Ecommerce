package ecommerce.service;

import java.util.List;

import ecommerce.model.AnhSanPham;

public interface AnhSanPhamDao extends HanhDong<AnhSanPham, Integer> {
	List<AnhSanPham> timKiem(String sanPhamId);
}

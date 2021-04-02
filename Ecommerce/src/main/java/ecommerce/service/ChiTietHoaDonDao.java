package ecommerce.service;

import java.util.List;

import ecommerce.model.ChiTietHoaDon;

public interface ChiTietHoaDonDao extends HanhDong<ChiTietHoaDon, Integer>{
	 List<ChiTietHoaDon> timKiem(String ma);
}

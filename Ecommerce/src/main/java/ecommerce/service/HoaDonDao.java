package ecommerce.service;

import java.util.List;

import ecommerce.model.HoaDon;

public interface HoaDonDao extends HanhDong<HoaDon, String> {
	List<HoaDon> timKiem(int ma);
}

package ecommerce.service;

import java.util.List;

import ecommerce.model.SoDiaChi;

public interface SoDiaChiDao extends HanhDong<SoDiaChi, String> {
	List<SoDiaChi> timKiem(int khachHangId);
}

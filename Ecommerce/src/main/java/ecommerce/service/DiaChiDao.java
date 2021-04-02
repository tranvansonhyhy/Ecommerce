package ecommerce.service;

import java.util.List;

import ecommerce.model.DiaChi;

public interface DiaChiDao extends HanhDong<DiaChi, String> {
	public List<DiaChi> timKiem(String ma);
}

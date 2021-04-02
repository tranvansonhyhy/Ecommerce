package ecommerce.service;

import java.util.List;

import ecommerce.model.DanhMuc;

public interface DanhMucDao extends HanhDong<DanhMuc, Integer>{
	List<DanhMuc> timKiem(int ma);
}

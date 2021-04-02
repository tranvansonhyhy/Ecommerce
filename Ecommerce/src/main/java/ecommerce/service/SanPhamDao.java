package ecommerce.service;


import java.util.Date;
import java.util.List;

import ecommerce.model.SanPham;

public interface SanPhamDao extends HanhDong<SanPham, Integer> {
	SanPham layChiTiet2(String ma);
	List<SanPham> timKiem(String ten, String kichThuoc, String mauSac, float gia1, float gia2,
			int danhMuc, int loaiSp, int hang, int xuatxu, Date ngay1, Date ngay2);
	List<SanPham> timKiem2(int ma);
	List<SanPham> timKiem3(String ma);
}

package ecommerce.controller;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ecommerce.model.DanhMuc;
import ecommerce.model.SanPham;
import ecommerce.service.DanhMucDao;
import ecommerce.service.SanPhamDao;


@Controller
public class TrangChuController {
	@Autowired
	private SanPhamDao sanPhamDao;
	
	@Autowired
	private DanhMucDao danhMucDao;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String hienThiTrangChu(Model model) {
		String ten = "";
		String kichThuoc = "";
		String mauSac= "";
		float gia1 =0;
		float gia2=0;
		int dm=0;
		int loai1=1;
		int loai2 =2;
		int hang=0;
		int xx=0;
		Date ngay1 = null;
		Date ngay2 = null;
		List<SanPham> lstSanPhamMoi = sanPhamDao.timKiem(ten, kichThuoc, mauSac, gia1, gia2, dm, loai2, hang, xx, ngay1, ngay2);
		List<SanPham> lstSanPhamBanChay = sanPhamDao.timKiem(ten, kichThuoc, mauSac, gia1, gia2, dm, loai1, hang, xx, ngay1, ngay2);
		List<SanPham> lstSanPham = sanPhamDao.layDanhSach();
		model.addAttribute("lstSanPhamMoi", lstSanPhamMoi);
		model.addAttribute("lstSanPhamBanChay", lstSanPhamBanChay);
		model.addAttribute("lstSanPham", lstSanPham);
		return "trangChu";
	}
	
	@RequestMapping(value="/laydanhmuc", produces= {"application/json"}, method = RequestMethod.GET)
	public ResponseEntity<Object> layDanhMuc(){	
		List<DanhMuc> lstDM = danhMucDao.timKiem(0);
		for (int i = 0 ; i <lstDM.size(); i++) {
			lstDM.get(i).setLstDanhMuc(danhMucDao.timKiem(lstDM.get(i).getId()));
		}
		return new ResponseEntity<Object>(lstDM, HttpStatus.OK);
	}
}

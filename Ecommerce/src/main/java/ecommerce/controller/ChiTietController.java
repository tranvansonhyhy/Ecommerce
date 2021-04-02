package ecommerce.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ecommerce.model.AnhSanPham;
import ecommerce.model.SanPham;
import ecommerce.service.AnhSanPhamDao;
import ecommerce.service.SanPhamDao;


@Controller
public class ChiTietController {
	@Autowired
	private SanPhamDao sanPhamDao;
	@Autowired
	private AnhSanPhamDao anhSPDao;
	
	@RequestMapping(value = "/chi-tiet/{ma}")
	public String chiTietSanPham(@PathVariable(value = "ma") String ma, Model model) {
		SanPham objSanPham = sanPhamDao.layChiTiet2(ma);
		List<AnhSanPham> lstAnhSanPham = anhSPDao.timKiem(ma);
		model.addAttribute("objSanPham",objSanPham);
		model.addAttribute("lstAnh", lstAnhSanPham);
		return "chiTiet";
	}
	
}

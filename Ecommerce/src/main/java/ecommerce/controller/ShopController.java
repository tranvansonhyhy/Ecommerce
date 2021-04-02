package ecommerce.controller;

import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ecommerce.model.*;
import ecommerce.service.*;


@Controller
public class ShopController {
	
	@Autowired
	private SanPhamDao sanPhamDao;
	
	@Autowired
	private HangSanXuatDao hangSXDao;
	
	@Autowired
	private XuatXuDao xuatXuDao;
	
	@RequestMapping(value="/san-pham/{ma}", method = RequestMethod.GET)
	public String hienThiTrangChu(@PathVariable("ma") int ma, Model model) {
		List<SanPham> lst = sanPhamDao.timKiem2(ma);
		System.out.println(lst.size());
		HangSanXuat objHangSX = null;
		XuatXu objXuatXu = null;
		HashSet<HangSanXuat> lstHangSanXuat = new HashSet<>();
		HashSet<XuatXu> lstXuatXu = new HashSet<>();
		HashSet<String> kichThuoc = new HashSet<String>();
		HashSet<String> mauSac = new HashSet<String>();
		for (int i = 0; i < lst.size(); i++) {
			objHangSX = hangSXDao.layChiTiet(lst.get(i).getHangSXId());
			lstHangSanXuat.add(objHangSX);
			objXuatXu = xuatXuDao.layChiTiet(lst.get(i).getXuatXuId());
			lstXuatXu.add(objXuatXu);
			kichThuoc.add(lst.get(i).getKichThuoc());
			mauSac.add(lst.get(i).getMauSac());
		}
		for (XuatXu xuatXu : lstXuatXu) {
			System.out.println(xuatXu.getId());
		}
		model.addAttribute("lstHSX", lstHangSanXuat);
		model.addAttribute("lstXX", lstXuatXu);
		model.addAttribute("kichThuoc", kichThuoc);
		model.addAttribute("mauSac", mauSac);
		model.addAttribute("lstSanPham", lst);
		return "shop";
		
	}
	
	@RequestMapping(value = "/tim-kiem-ten")
	public String viewTimKiem(@RequestParam("ma") String ma, Model model) {
		List<SanPham> lst = sanPhamDao.timKiem3(ma);
		model.addAttribute("lstSanPham", lst);
		HangSanXuat objHangSX = null;
		XuatXu objXuatXu = null;
		HashSet<HangSanXuat> lstHangSanXuat = new HashSet<>();
		HashSet<XuatXu> lstXuatXu = new HashSet<>();
		HashSet<String> kichThuoc = new HashSet<String>();
		HashSet<String> mauSac = new HashSet<String>();
		for (int i = 0; i < lst.size(); i++) {
			objHangSX = hangSXDao.layChiTiet(lst.get(i).getHangSXId());
			lstHangSanXuat.add(objHangSX);
			objXuatXu = xuatXuDao.layChiTiet(lst.get(i).getXuatXuId());
			lstXuatXu.add(objXuatXu);
			kichThuoc.add(lst.get(i).getKichThuoc());
			mauSac.add(lst.get(i).getMauSac());
		}
		for (XuatXu xuatXu : lstXuatXu) {
			System.out.println(xuatXu.getId());
		}
		model.addAttribute("lstHSX", lstHangSanXuat);
		model.addAttribute("lstXX", lstXuatXu);
		model.addAttribute("kichThuoc", kichThuoc);
		model.addAttribute("mauSac", mauSac);
		model.addAttribute("lstSanPham", lst);
		return "shop";
	}
}

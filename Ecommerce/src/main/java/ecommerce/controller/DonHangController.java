package ecommerce.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ecommerce.model.*;
import ecommerce.service.*;

@Controller
@RequestMapping(value = "/admin")
public class DonHangController {
	@Autowired
	private HoaDonDao hoaDonDao;
	
	@Autowired
	private KhachHangDao khachHangDao;
	
	@Autowired
	private ChiTietHoaDonDao chiTietHoaDonDao;
	
	@Autowired
	private SoDiaChiDao soDiaChiDao;
	
	@RequestMapping(value = "/don-hang", method = RequestMethod.GET)
	public String danhSach(Model model) {
		List<HoaDon> lstHoaDon = hoaDonDao.layDanhSach();
		for (int i = 0; i < lstHoaDon.size(); i++) {
			if (lstHoaDon.get(i).getKhachHangId() != 0) {
				KhachHang objKhachHang = khachHangDao.layChiTiet(lstHoaDon.get(i).getKhachHangId());
				lstHoaDon.get(i).setHoTen(objKhachHang.getHoTen());
			}
		}
		model.addAttribute("lstHoaDon",lstHoaDon);
		model.addAttribute("hoaDon", new HoaDon());
		return "dsdonhang";
	}
	
	@RequestMapping(value = "/chi-tiet-don-hang/{ma}")
	public String viewChiTiet(@PathVariable("ma") String ma, Model model) {
		HoaDon objHoaDon = hoaDonDao.layChiTiet(ma);
		KhachHang objKhachHang = khachHangDao.layChiTiet(objHoaDon.getKhachHangId());
		if (objKhachHang != null) {
			objHoaDon.setHoTen(objKhachHang.getHoTen());
		}
		List<ChiTietHoaDon> lstChiTietHoaDon = chiTietHoaDonDao.timKiem(ma);
		SoDiaChi objSoDiaChi = soDiaChiDao.layChiTiet(objHoaDon.getDiaChiId());
		model.addAttribute("hoaDon", objHoaDon);
		model.addAttribute("lstChiTietHD", lstChiTietHoaDon);
		model.addAttribute("soDiaChi", objSoDiaChi);
		return "chitietdonhang";
	}
	
	@RequestMapping(value = "/cap-nhat-don-hang")
	public String capNhat(@ModelAttribute("hoaDon") HoaDon objHoaDon, Model model) {
		System.out.println("Ma hoa don la"+objHoaDon.getId());
		HoaDon objHoaDonOld = hoaDonDao.layChiTiet(objHoaDon.getId());
		objHoaDonOld.setTinhTrang(objHoaDon.getTinhTrang());
		objHoaDonOld.setTrangThaiThanhToan(objHoaDon.getTrangThaiThanhToan());
		hoaDonDao.capNhat(objHoaDonOld);
		return "redirect:/admin/don-hang" ;
	}
	
}

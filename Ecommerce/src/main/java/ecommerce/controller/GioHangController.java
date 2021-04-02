package ecommerce.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ecommerce.model.GioHang;
import ecommerce.model.KhachHang;
import ecommerce.model.SoDiaChi;
import ecommerce.service.GioHangDao;
import ecommerce.service.SoDiaChiDao;

@Controller
public class GioHangController {
	@Autowired
	private GioHangDao gioHangDao;
	
	@Autowired
	private SoDiaChiDao soDiaChiDao;
	
	@RequestMapping(value = "/gio-hang", method = RequestMethod.GET)
	public String gioHang(Model model, HttpSession session) {
		HashMap<String, GioHang> gioHang = (HashMap<String, GioHang>)session.getAttribute("Cart");
		if (gioHang == null) {
			gioHang = new HashMap<String, GioHang>();
		}
		 session.setAttribute("Cart", gioHang);
		 session.setAttribute("tongSoLuong", gioHangDao.tongSoLuong(gioHang));
		 session.setAttribute("tongGiaTien", gioHangDao.tongGiaTien(gioHang));
		return "trangGioHang";
	}
	
	@RequestMapping(value = "/lstGioHang", method = RequestMethod.GET, produces={"application/json"})
	public ResponseEntity<HashMap<String, GioHang>> lstGioHang(HttpSession session) {
		HashMap<String, GioHang> gioHang = (HashMap<String, GioHang>)session.getAttribute("Cart");
		return new ResponseEntity<HashMap<String, GioHang>>(gioHang, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/them-gio-hang/{id}", method = RequestMethod.POST, produces={"application/json"})
	public ResponseEntity<HashMap<String, GioHang>> addGioHang(HttpServletRequest request,HttpSession session, @PathVariable String id) {
		HashMap<String, GioHang> gioHang = new HashMap<String, GioHang>();
		if (session.getAttribute("Cart") != null) {
			gioHang = (HashMap<String, GioHang>)session.getAttribute("Cart");
		} else {
			gioHang = new HashMap<String, GioHang>();
		}
		 gioHang = gioHangDao.themGioHang(id, gioHang);
		 session.setAttribute("Cart", gioHang);
		 return new ResponseEntity<HashMap<String, GioHang>>(gioHang, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/sua-gio-hang/{id}")
	public String editGioHang(HttpSession session, @PathVariable String id) {
//		HashMap<String, GioHang> gioHang = (HashMap<String, GioHang>)session.getAttribute("Cart");
//		if (gioHang == null) {
//			gioHang = new HashMap<String, GioHang>();
//		}
//		 gioHang = gioHangDao.suaGioHang(id, gioHang);
//		 session.setAttribute("Cart", gioHang);
//		 session.setAttribute("tongSoLuong", gioHangDao.tongSoLuong(gioHang));
//		 session.setAttribute("tongGiaTien", gioHangDao.tongGiaTien(gioHang));
		return "trangGioHang";
	}
	
	// Xóa sản phẩm trong giỏ hàng
	@RequestMapping(value = "/xoa-gio-hang/{id}")
	public String deleteGioHang(HttpSession session, @PathVariable String id) {
		HashMap<String, GioHang> gioHang = (HashMap<String, GioHang>)session.getAttribute("Cart");
		if (gioHang == null) {
			gioHang = new HashMap<String, GioHang>();
		}
		 gioHang = gioHangDao.xoaGioHang(id, gioHang);
		 session.setAttribute("Cart", gioHang);
		 session.setAttribute("tongSoLuong", gioHangDao.tongSoLuong(gioHang));
		 session.setAttribute("tongGiaTien", gioHangDao.tongGiaTien(gioHang));
		return "trangGioHang";
	}
	
	@RequestMapping(value = "/mua-hang")
	public String thanhToan(HttpSession session) {
		KhachHang obj = (KhachHang)session.getAttribute("khachHang");
		List<SoDiaChi> lst = new ArrayList<>();
		if (obj != null) {
			lst = soDiaChiDao.timKiem(obj.getId());
		}
		if (obj != null && lst.size() > 0) {
			return "redirect:/trang-thanh-toan";
		}else {
			return "redirect:/thanh-toan";
		}
	}
}

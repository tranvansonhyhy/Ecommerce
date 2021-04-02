package ecommerce.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import ecommerce.model.*;
import ecommerce.service.*;

@Controller
public class ThanhToanController {
	Calendar cal = Calendar.getInstance();
	int mnGiay = (int) cal.get(Calendar.MILLISECOND);
	int giay = (int) cal.get(Calendar.SECOND);
	int phut = (int) cal.get(Calendar.MINUTE);
	int gio = (int) cal.get(Calendar.HOUR);
	int ngay = (int) cal.get(Calendar.DAY_OF_MONTH);
	int thang = (int) cal.get(Calendar.MONTH)+1;
	int nam = (int) cal.get(Calendar.YEAR);
	String date = gio+""+phut+""+giay+""+mnGiay+""+ngay+""+thang+""+nam;
	@Autowired
	private GioHangDao gioHangDao;
	
	@Autowired
	private DiaChiDao diaChiDao;
	
	@Autowired
	private SoDiaChiDao soDiaChiDao;
	
	@Autowired
	private HoaDonDao hoaDonDao;
	
	@Autowired
	private ChiTietHoaDonDao chiTietHoaDonDao;
	
	@RequestMapping(value = "/thanh-toan", method = RequestMethod.GET)
	public String thanhToan(Model model, HttpSession session) {
		//Lấy danh sách sản phẩm trong giỏ hàng
		HashMap<String, GioHang> gioHang = (HashMap<String, GioHang>)session.getAttribute("Cart");
		if (gioHang == null) {
			gioHang = new HashMap<String, GioHang>();
		}
		model.addAttribute("soDiaChi", new SoDiaChi());
		session.setAttribute("Cart", gioHang);
		session.setAttribute("tongSoLuong", gioHangDao.tongSoLuong(gioHang));
		session.setAttribute("tongGiaTien", gioHangDao.tongGiaTien(gioHang));
		session.setAttribute("thue", gioHangDao.tongGiaTien(gioHang)*0.01);
		session.setAttribute("thanhTien", (gioHangDao.tongGiaTien(gioHang)*0.01)+gioHangDao.tongGiaTien(gioHang));
		return "thanhToan";
	}
	
	@RequestMapping(value = "/trang-thanh-toan", method = RequestMethod.GET)
	public String viewthanhToan(Model model, HttpSession session) {
		//Lấy danh sách sản phẩm trong giỏ hàng
		HashMap<String, GioHang> gioHang = (HashMap<String, GioHang>)session.getAttribute("Cart");
		KhachHang obj = (KhachHang)session.getAttribute("khachHang");
		if (gioHang == null) {
			gioHang = new HashMap<String, GioHang>();
		}
		// Lấy danh sách địa chỉ của khách hàng
		List<SoDiaChi> lstSoDiaChi = soDiaChiDao.timKiem(obj.getId());
		System.out.println(lstSoDiaChi.get(0).getTinh2().getTen());
		model.addAttribute("lstSoDiaChi",lstSoDiaChi);
		session.setAttribute("Cart", gioHang);
		session.setAttribute("tongSoLuong", gioHangDao.tongSoLuong(gioHang));
		session.setAttribute("tongGiaTien", gioHangDao.tongGiaTien(gioHang));
		session.setAttribute("thue", gioHangDao.tongGiaTien(gioHang)*0.01);
		session.setAttribute("thanhTien", (gioHangDao.tongGiaTien(gioHang)*0.01)+gioHangDao.tongGiaTien(gioHang));
		return "thanhToanDN";
	}
	
	@RequestMapping(value = "/dat-hang", method = RequestMethod.POST)
	public String datHang(@ModelAttribute("soDiaChi") SoDiaChi objSoDiaChi,HttpServletRequest request, Model model,
			@RequestParam("ghiChu") String ghiChu, HttpSession session) {
		String id;
		boolean kq = false;
		HoaDon objHoaDon = new HoaDon();
		ChiTietHoaDon objChiTietHoaDon;
		// Lấy giỏ hàng từ session
		HashMap<String, GioHang> gioHang = (HashMap<String, GioHang>)session.getAttribute("Cart");
		// Đưa giỏ hàng về list
		List<GioHang> lstGioHang = new ArrayList<GioHang>(gioHang.values());;
		
		// Lấy thông tin khách hàng từ session
		KhachHang objkhachHang = (KhachHang) session.getAttribute("khachHang");
		
		// Kiểm tra nếu giỏ hàng và khách hàng tồn tại thì thêm địa chỉ nhận hàng vào db
		if (gioHang != null && objkhachHang != null) {
			//Lấy id cho địa chỉ
			id = ""+objkhachHang.getId()+""+date;
			objSoDiaChi.setId(id);
			objSoDiaChi.setKhachHangId(objkhachHang.getId());
			soDiaChiDao.themMoi(objSoDiaChi);
			objHoaDon.setId(id);
			objHoaDon.setKhachHangId(objkhachHang.getId());
			objHoaDon.setNgayTao(new Date());
			objHoaDon.setTinhTrang(1);
			objHoaDon.setTongTien(gioHangDao.tongGiaTien(gioHang));
			objHoaDon.setDiaChiId(objSoDiaChi.getId());
			objHoaDon.setPhuongThucThanhToan(1);
			objHoaDon.setTrangThaiThanhToan(1);
			kq = hoaDonDao.themMoi(objHoaDon);
			for (int i = 0; i < lstGioHang.size(); i++) {
				objChiTietHoaDon = new ChiTietHoaDon();
				objChiTietHoaDon.setHoaDonId(objHoaDon.getId());
				objChiTietHoaDon.setSanPhamId(lstGioHang.get(i).getSanPham().getId());
				objChiTietHoaDon.setSoLuong(lstGioHang.get(i).getSoLuong());
				objChiTietHoaDon.setGiaTien(lstGioHang.get(i).getTongTien());
				chiTietHoaDonDao.themMoi(objChiTietHoaDon);
			}
		}else if (gioHang != null && objkhachHang == null) {
			objSoDiaChi.setId(date);
			objSoDiaChi.setKhachHangId(0);
			soDiaChiDao.themMoi(objSoDiaChi);
			objHoaDon.setId(date);
			objHoaDon.setKhachHangId(0);
			objHoaDon.setNgayTao(new Date());
			objHoaDon.setTinhTrang(1);
			objHoaDon.setTongTien(gioHangDao.tongGiaTien(gioHang));
			objHoaDon.setDiaChiId(objSoDiaChi.getId());
			objHoaDon.setPhuongThucThanhToan(1);
			objHoaDon.setTrangThaiThanhToan(1);
			kq = hoaDonDao.themMoi(objHoaDon);
			for (int i = 0; i < lstGioHang.size(); i++) {
				objChiTietHoaDon = new ChiTietHoaDon();
				objChiTietHoaDon.setHoaDonId(objHoaDon.getId());
				objChiTietHoaDon.setSanPhamId(lstGioHang.get(i).getSanPham().getId());
				objChiTietHoaDon.setSoLuong(lstGioHang.get(i).getSoLuong());
				objChiTietHoaDon.setGiaTien(lstGioHang.get(i).getTongTien());
				chiTietHoaDonDao.themMoi(objChiTietHoaDon);
			}
		}
		if (kq) {
			String img = "ok.png";
			session.setAttribute("img", img);
			session.setAttribute("thanhCong", "Đặt hàng thành công");
			session.setAttribute("moTa", "Chúng tôi sẽ liên hệ với bạn trong vòng 15' để xác nhận đơn hàng");
			return "thongBao";
		}else {
			String img = "error.png";
			session.setAttribute("img", img);
			session.setAttribute("thanhCong", "Đặt hàng không thành công");
			session.setAttribute("moTa", "Vui lòng kiểm tra và đặt hàng lại");
			return "thongBao";
		}
	}
	
	@RequestMapping(value = "/them-dat-hang", method = RequestMethod.POST)
	public String themDatHang(HttpServletRequest request, Model model,
			@RequestParam("ghiChu") String ghiChu,@RequestParam("diaChi") String diaChi, HttpSession session) {
		String id;
		boolean kq = false;
		HoaDon objHoaDon = new HoaDon();
		ChiTietHoaDon objChiTietHoaDon;
		// Lấy giỏ hàng từ session
		HashMap<String, GioHang> gioHang = (HashMap<String, GioHang>)session.getAttribute("Cart");
		// Đưa giỏ hàng về list
		List<GioHang> lstGioHang = new ArrayList<GioHang>(gioHang.values());;
		
		// Lấy thông tin khách hàng từ session
		KhachHang objkhachHang = (KhachHang) session.getAttribute("khachHang");
		
		// Kiểm tra nếu giỏ hàng và khách hàng tồn tại thì thêm địa chỉ nhận hàng vào db
		if (gioHang != null && objkhachHang != null) {
			//Lấy id cho địa chỉ
			id = ""+objkhachHang.getId()+""+date;
			objHoaDon.setId(id);
			objHoaDon.setKhachHangId(objkhachHang.getId());
			objHoaDon.setNgayTao(new Date());
			objHoaDon.setTinhTrang(1);
			objHoaDon.setTongTien(gioHangDao.tongGiaTien(gioHang));
			objHoaDon.setDiaChiId(diaChi);
			objHoaDon.setPhuongThucThanhToan(1);
			objHoaDon.setTrangThaiThanhToan(1);
			kq = hoaDonDao.themMoi(objHoaDon);
			for (int i = 0; i < lstGioHang.size(); i++) {
				objChiTietHoaDon = new ChiTietHoaDon();
				objChiTietHoaDon.setHoaDonId(objHoaDon.getId());
				objChiTietHoaDon.setSanPhamId(lstGioHang.get(i).getSanPham().getId());
				objChiTietHoaDon.setSoLuong(lstGioHang.get(i).getSoLuong());
				objChiTietHoaDon.setGiaTien(lstGioHang.get(i).getTongTien());
				chiTietHoaDonDao.themMoi(objChiTietHoaDon);
			}
		}
		if (kq) {
			String img = "ok.png";
			session.setAttribute("img", img);
			session.setAttribute("thanhCong", "Đặt hàng thành công");
			session.setAttribute("moTa", "Chúng tôi sẽ liên hệ với bạn trong vòng 15' để xác nhận đơn hàng");
			return "thongBao";
		}else {
			String img = "error.png";
			session.setAttribute("img", img);
			session.setAttribute("thanhCong", "Đặt hàng không thành công");
			session.setAttribute("moTa", "Vui lòng kiểm tra và đặt hàng lại");
			return "thongBao";
		}
		
	}
	
	//Lấy danh sách tỉnh thành
	@RequestMapping(value = "/lstTinh", method = RequestMethod.GET, produces={"application/json"})
	public ResponseEntity<List<DiaChi>> lstTinh(HttpSession session) {
		String maCha = "0";
		List<DiaChi> lstTinh = diaChiDao.timKiem(maCha);
		return new ResponseEntity<List<DiaChi>>(lstTinh, HttpStatus.OK);
	}
	
	//Lấy danh sách tỉnh thành
	@RequestMapping(value = "/lstHuyen/{id}", method = RequestMethod.GET, produces={"application/json"})
	public ResponseEntity<List<DiaChi>> lstHuyen(HttpServletRequest request, HttpSession session, @PathVariable String id) {
		List<DiaChi> lstHuyen = diaChiDao.timKiem(id);
		return new ResponseEntity<List<DiaChi>>(lstHuyen, HttpStatus.OK);
	}
	
	//Lấy danh sách tỉnh thành
	@RequestMapping(value = "/lstXa/{id}", method = RequestMethod.GET, produces={"application/json"})
	public ResponseEntity<List<DiaChi>> lstXa(HttpServletRequest request, HttpSession session, @PathVariable String id) {
		List<DiaChi> lstXa = diaChiDao.timKiem(id);
		return new ResponseEntity<List<DiaChi>>(lstXa, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/thong-bao")
	public String thongBao(Model model) {
		return "thongBao";
	}
}

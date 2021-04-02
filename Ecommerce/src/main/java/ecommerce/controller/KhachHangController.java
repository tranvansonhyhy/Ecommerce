package ecommerce.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
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
public class KhachHangController {
	@Autowired
	private KhachHangDao khachHangDao;
	
	@Autowired
	private HoaDonDao hoaDonDao;
	
	@Autowired
	private ChiTietHoaDonDao chiTietHoaDonDao;
	
	@Autowired
	private SoDiaChiDao soDiaChiDao;
	
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public String viewdangNhap() {
		return "dangNhap";
	}
	
	@RequestMapping(value="/thuc-hien-dang-nhap", method = RequestMethod.POST)
	public String dangNhap(@RequestParam("tenDangNhap") String tenDangNhap, @RequestParam("matKhau") String matKhau,Model model ,HttpSession session)
	{
		KhachHang obj = khachHangDao.checkLogin(tenDangNhap);
		
		if(obj != null) {
			String matKhauDB = obj.getMatKhau();
			if (matKhau.equals(matKhauDB)) {
				//Nếu đăng nhập thành công
				//Lưu thông tin vào session
				session.setAttribute("khachHang", obj);
				model.addAttribute("thongBao", "Đăng nhập thông tin thành công");
				if (session.getAttribute("url") != null) {
					String url =(String) session.getAttribute("url");
					return "redirect:"+url;
				}else {
					return "redirect:gio-hang";
				}
			}else {
				model.addAttribute("thongBao", "Mật khẩu không đúng");
			}
		}
		else
		{
			model.addAttribute("thongBao", "Đăng nhập thất bại, bạn vui lòng kiểm tra lại");
		}
		
		return "dangNhap";
	}
	
	@RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
	public String viewdangKy(Model model) {
		model.addAttribute("khachHang", new KhachHang());
		return "dangKy";
	}
	
	@RequestMapping(value = "/dang-ky-moi", method = RequestMethod.POST)
	public String dangKy(@ModelAttribute("khachHang") @Valid KhachHang objKhachHang,
			HttpServletRequest request, Model model) {
		// Nếu người chưa nhập các thông tin bắt buộc thì đưa ra lỗi và giữ nguyên form
		
			boolean ketQua = false;
			if (objKhachHang != null) {
				ketQua = khachHangDao.themMoi(objKhachHang);
			}// Nếu thêm mới thành công thì trả về trang chu
			if (ketQua) {
				return "redirect:/dang-nhap";
			}
			return "dangKy";
	}
	
	@RequestMapping(value = "/thong-tin", method = RequestMethod.GET)
	public String viewThongTin(Model model, HttpSession session) {
		KhachHang thongTin = (KhachHang) session.getAttribute("khachHang");
		System.out.println(thongTin.getHoTen());
		model.addAttribute("khachHang", thongTin);
		return "caNhan";
	}
	
	@RequestMapping(value = "/doi-thong-tin", method = RequestMethod.POST)
	public String doiThongTin(@ModelAttribute("khachHang") @Valid KhachHang objKhachHang,HttpServletRequest request,
			HttpSession session, Model model) {
		boolean kq = false;
		if (objKhachHang != null) {
			kq = khachHangDao.capNhat(objKhachHang);
		}
		if (kq) {
			session.removeAttribute("khachHang");
			session.setAttribute("khachHang", objKhachHang);
			return "redirect:/thong-tin";
		}
		return "redirect:/thong-tin";
	}
	
	@RequestMapping(value = "/mat-khau-tai-khoan", method = RequestMethod.GET)
	public String viewdoiMatKhau(Model model) {
		return "matKhau";
	}
	
	@RequestMapping(value = "/thay-doi-mat-khau", method = RequestMethod.POST)
	public String doiMatKhau(@RequestParam("matKhauCu") String matKhauCu, @RequestParam("matKhauMoi") String matKhauMoi,
			Model model ,HttpSession session) {
		KhachHang objKhachHangOld = (KhachHang) session.getAttribute("khachHang");
		if (objKhachHangOld.getMatKhau().equals(matKhauCu)) {
			objKhachHangOld.setMatKhau(matKhauMoi);
			khachHangDao.capNhat(objKhachHangOld);
			session.removeAttribute("khachHang");
		}
		session.setAttribute("khachHang", objKhachHangOld);
		return "redirect:/thong-tin";
	}
	
	@RequestMapping(value = "/lich-su-mua-hang")
	public String viewDonHang(Model model, HttpSession session) {
		KhachHang objKhachHang = (KhachHang) session.getAttribute("khachHang");
		List<HoaDon> lstHoaDon = hoaDonDao.timKiem(objKhachHang.getId());
		model.addAttribute("lstHoaDon", lstHoaDon);
		return "dsDonHang";
	}
	
	@RequestMapping(value = "/chi-tiet-don-hang/{ma}")
	public String viewChiTietDonHang(@PathVariable("ma") String ma, Model model) {
		HoaDon objHoaDon = hoaDonDao.layChiTiet(ma);
		KhachHang objKhachHang = khachHangDao.layChiTiet(objHoaDon.getKhachHangId());
		if (objKhachHang != null) {
			objHoaDon.setHoTen(objKhachHang.getHoTen());
		}
		List<ChiTietHoaDon> lstChiTietHoaDon = chiTietHoaDonDao.timKiem(ma);
		SoDiaChi objSoDiaChi = soDiaChiDao.layChiTiet(objHoaDon.getDiaChiId());
		System.out.println(objHoaDon.getId());
		System.out.println(objKhachHang.getHoTen());
		System.out.println(lstChiTietHoaDon.size());
		System.out.println(objSoDiaChi.getId());
		model.addAttribute("hoaDon", objHoaDon);
		model.addAttribute("lstChiTietHD", lstChiTietHoaDon);
		model.addAttribute("soDiaChi", objSoDiaChi);
		return "ctDonHang";
	}
	
}

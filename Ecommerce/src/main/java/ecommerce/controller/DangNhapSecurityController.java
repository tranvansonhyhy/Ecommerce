package ecommerce.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import ecommerce.model.NguoiDung;
import ecommerce.service.NguoiDungDao;

@Controller
public class DangNhapSecurityController {
//	@RequestMapping(value = "/dangnhapHT", method = RequestMethod.GET)
//	public String dNHT(Model model) {
//		return "DangNhapHeThong";
//	}
//	@RequestMapping(value = "/dangnhapHT", method = RequestMethod.GET)
//	public String viewDangNhap(@ModelAttribute("user") TaiKhoan taiKhoan,
//	@RequestParam(value = "error", required = false) final String error, Model model) {
//		//Nếu có lỗi
//		if (error != null) {
//			model.addAttribute("message", "Dang nhap khong thanh cong"+ error);
//		}
//		
//		model.addAttribute("user", taiKhoan);
//		
//		return "DangNhapHeThong";
//	}
//	
//	@RequestMapping(value = "/xuLyDangNhap", method = RequestMethod.GET)
//	public String xuLyDangNhap(@ModelAttribute("user") TaiKhoan taiKhoan, Model model) {
//		
//		model.addAttribute("user", taiKhoan);
//		System.out.println("Ten dang nhap la"+taiKhoan.getTaiKhoan());
//		return "DangNhapHeThong";
//	}
//	
	@RequestMapping("/admin")
	public String admin() {
		return "trangql";
	}
//	
//	@RequestMapping("/dangxuatHT")
//	public String dangXuat(final Model model) {
//		model.addAttribute("message","Dang xuat thanh cong");
//		model.addAttribute("user", new TaiKhoan());
//		return "DangNhapHeThong";
//	}
	/**
	 * Hiển thị form đăng nhập
	 * @return
	 */
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String hienThiDangNhap()
	{
		return "DangNhap";
	}
	
	@Autowired
	NguoiDungDao nguoiDungDao;
	/**
	 * Xử lý khi nhấn nút đăng nhập trên giao diện
	 * @param tenDangNhap
	 * @param matKhau
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/xuLyDangNhap", method = RequestMethod.POST)
	public String xuLyDangNhap(@RequestParam("tenDangNhap") String tenDangNhap, @RequestParam("matKhau") String matKhau,Model model ,HttpSession session)
	{
		System.out.println("Tên đăng nhập là: " + tenDangNhap);
		System.out.println("Mật khẩu là: " + matKhau);
		
		NguoiDung taiKhoan = nguoiDungDao.ktraDN(tenDangNhap);
		
		if(taiKhoan != null) {
			String matKhauDB = taiKhoan.getMatKhau();
			if (matKhau.equals(matKhauDB)) {
				//Nếu đăng nhập thành công
				//Lưu thông tin vào session
				session.setAttribute("userOnline", tenDangNhap);
				model.addAttribute("thongBao", "Đăng nhập thông tin thành công");
				if (session.getAttribute("url") != null) {
					String url =(String) session.getAttribute("url");
					return "redirect:"+url;
				}else {
					return "redirect:admin";
				}
			}else {
				model.addAttribute("thongBao", "Mật khẩu không đúng");
			}
		}
		else
		{
			model.addAttribute("thongBao", "Đăng nhập thất bại, bạn vui lòng kiểm tra lại");
		}
		
		return "DangNhap";
	}
}

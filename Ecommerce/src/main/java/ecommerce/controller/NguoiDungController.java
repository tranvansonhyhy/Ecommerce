package ecommerce.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ecommerce.model.NguoiDung;
import ecommerce.service.NguoiDungDao;

@Controller
@RequestMapping(value = "/admin")
public class NguoiDungController {
	@Autowired
	private NguoiDungDao nguoiDungDao;
	
	@RequestMapping(value = "/nguoi-dung", method = RequestMethod.GET)
	public String hienThiDSTK(Model model) {
		List<NguoiDung> lstNguoiDung = nguoiDungDao.layDanhSach();
		model.addAttribute("lstNguoiDung", lstNguoiDung);
		model.addAttribute("nguoiDung", new NguoiDung());
		return "dstaikhoan";
	}
	
	@RequestMapping(value = "/them-nguoi-dung", method = RequestMethod.GET)
	public String theMoi(Model model) {
		model.addAttribute("nguoiDung", new NguoiDung());
		return "addtaikhoan";
	}
	
	@RequestMapping(value = "/tai-khoan-add", method = RequestMethod.POST)
	public String themMoiTaiKhoan(@ModelAttribute("nguoiDung") @Valid NguoiDung objNguoiDung, BindingResult result,
			@RequestParam("fUpload") MultipartFile fUpload, HttpServletRequest request, Model model) {
		// Nếu người chưa nhập các thông tin bắt buộc thì đưa ra lỗi và giữ nguyên form
		if (result.hasErrors()) {
			model.addAttribute("message", "Thêm và upload không thành công");
			return "addtaikhoan";
		} else {
			boolean ketQua = false;
			String fileName = "";
			if (objNguoiDung != null) {
			
			if(fUpload != null) {
				fileName = fUpload.getOriginalFilename();
				// Lấy đường dẫn upload trong web.xml
				String pathStr = request.getServletContext().getInitParameter("file-upload");

				try {
					// Tạo file theo đường dẫn và tên file truyền vào
					File file = new File(pathStr, fileName);
					// Ghi ra file
					fUpload.transferTo(file);
					// Gán tên ảnh vào đối tượng
					objNguoiDung.setAvatar(fileName);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
				// Kiểm tra sách tồn tại
				NguoiDung objNguoiDungOld = nguoiDungDao.layChiTiet(objNguoiDung.getId());

				if (objNguoiDungOld != null) {
					//Lấy và giữ nguyên ảnh cũ
					if(fileName.length() == 0) {
					objNguoiDung.setAvatar(objNguoiDungOld.getAvatar());
					}
					
					
					ketQua = nguoiDungDao.capNhat(objNguoiDung);
				} else {
					
					ketQua = nguoiDungDao.themMoi(objNguoiDung);
				}
			}

			// Nếu thêm mới thành công thì trả về trang danh sách
			if (ketQua) {
				return "addtaikhoan";
			}
			return "redirect:/admin/nguoi-dung";
			
		}

	}
}

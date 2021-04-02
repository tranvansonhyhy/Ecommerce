package ecommerce.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.print.attribute.standard.MediaSize.NA;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import ecommerce.model.*;
import ecommerce.service.AnhSanPhamDao;
import ecommerce.service.DanhMucDao;
import ecommerce.service.HangSanXuatDao;
import ecommerce.service.LoaiSanPhamDao;
import ecommerce.service.SanPhamDao;
import ecommerce.service.XuatXuDao;

@Controller
@RequestMapping(value = "/admin")
public class SanPhamController {
	@Autowired
	private SanPhamDao sanPhamDao;
	@Autowired
	private HangSanXuatDao hangSXDao;
	@Autowired
	private XuatXuDao xuatXuDao;
	@Autowired
	private DanhMucDao danhMucDao;
	@Autowired
	private LoaiSanPhamDao loaiSPDao;
	@Autowired
	private AnhSanPhamDao anhSPDao;
	
	@RequestMapping(value = "/san-pham", method = RequestMethod.GET)
	public String danhSach(Model model) {
		List<SanPham> lstSanPham = sanPhamDao.layDanhSach();
		Map<Integer, String> lstHang = layDanhSachHangSX();
		Map<Integer, String> lstXX = layDanhSachXuatXu();
		Map<Integer, String> lstDM = layDanhSachDanhMuc();
		Map<Integer, String> lstLoaiSP = layDSLoaiSP();
		model.addAttribute("sanPham", new SanPham());
		model.addAttribute("lstHang", lstHang);
		model.addAttribute("lstXX", lstXX);
		model.addAttribute("lstDM", lstDM);
		model.addAttribute("lstLoaiSP", lstLoaiSP);
		model.addAttribute("lstSanPham", lstSanPham);
		model.addAttribute("sanPham", new SanPham());
		return "dssanpham";
	}
	public Map<Integer, String> layDanhSachHangSX()
	{
		List<HangSanXuat> lstHangSX = hangSXDao.layDanhSach();
		Map<Integer, String> lstHang = new HashMap<Integer, String>();
		for(int i = 0;i<lstHangSX.size();i++) {
			lstHang.put(lstHangSX.get(i).getId(), lstHangSX.get(i).getTenHangSX());
		}
		return lstHang;
	}
	
	public Map<Integer, String> layDanhSachXuatXu()
	{
		List<XuatXu> lstXuatXu = xuatXuDao.layDanhSach();
		Map<Integer, String> lstXX = new HashMap<Integer, String>();
		for(int i = 0;i<lstXuatXu.size();i++) {
			lstXX.put(lstXuatXu.get(i).getId(), lstXuatXu.get(i).getXuatXu());
		}
		return lstXX;
	}
	
	public Map<Integer, String> layDanhSachDanhMuc()
	{
		List<DanhMuc> lstDanhMuc = danhMucDao.layDanhSach();
		Map<Integer, String> lstDM = new HashMap<Integer, String>();
		for(int i = 0;i<lstDanhMuc.size();i++) {
			lstDM.put(lstDanhMuc.get(i).getId(), lstDanhMuc.get(i).getTenDanhMuc());
		}
		return lstDM;
	}
	
	public Map<Integer, String> layDSLoaiSP()
	{
		List<LoaiSanPham> lstDanhMuc = loaiSPDao.layDanhSach();
		Map<Integer, String> lstDM = new HashMap<Integer, String>();
		for(int i = 0;i<lstDanhMuc.size();i++) {
			lstDM.put(lstDanhMuc.get(i).getId(), lstDanhMuc.get(i).getTenLoai());
		}
		return lstDM;
	}
	
	@RequestMapping(value = "/san-pham-giam-gia")
	public String danhSachGiamGia() {
		return "spgiamgia";
	}
	
	@RequestMapping(value = "/them-san-pham")
	public String viewThemMoi(Model model) {
		Map<Integer, String> lstHang = layDanhSachHangSX();
		Map<Integer, String> lstXX = layDanhSachXuatXu();
		Map<Integer, String> lstDM = layDanhSachDanhMuc();
		Map<Integer, String> lstLoaiSP = layDSLoaiSP();
		model.addAttribute("sanPham", new SanPham());
		model.addAttribute("lstHang", lstHang);
		model.addAttribute("lstXX", lstXX);
		model.addAttribute("lstDM", lstDM);
		model.addAttribute("lstLoaiSP", lstLoaiSP);
		return "addsanpham";
	}
	
	@RequestMapping(value = "/sua-san-pham/{ma}")
	public String sua(@PathVariable("ma") String ma, Model model) {
		SanPham objSanPham = sanPhamDao.layChiTiet2(ma);
		List<AnhSanPham> lstAnhSanPham = anhSPDao.timKiem(ma);
		int size = lstAnhSanPham.size();
		for (int i = 4; i > size; i--) {
			lstAnhSanPham.add(new AnhSanPham());
		}
		Map<Integer, String> lstHang = layDanhSachHangSX();
		Map<Integer, String> lstXX = layDanhSachXuatXu();
		Map<Integer, String> lstDM = layDanhSachDanhMuc();
		Map<Integer, String> lstLoaiSP = layDSLoaiSP();
		model.addAttribute("sanPham", objSanPham);
		model.addAttribute("lstAnhSanPham", lstAnhSanPham);
		model.addAttribute("lstHang", lstHang);
		model.addAttribute("lstXX", lstXX);
		model.addAttribute("lstDM", lstDM);
		model.addAttribute("lstLoaiSP", lstLoaiSP);
		return "addsanpham";
	}
	
	@RequestMapping(value = "/them-san-pham-moi", method = RequestMethod.POST)
	public String themMoi(@ModelAttribute("sanPham") SanPham objSanPham,
			@RequestParam("fUpload") MultipartFile[] fUploads, HttpServletRequest request, Model model) {
		System.out.println("ban dang them moi");
		boolean ketQua = false;

		AnhSanPham objAnhSanPham = null;
		String fileName = "";
		if (objSanPham != null) {

			if (fUploads[0].getOriginalFilename() != "") {
				List<AnhSanPham> lst = anhSPDao.timKiem(objSanPham.getMaSanPham());
				if (lst != null) {
					for (int i = 0; i < lst.size(); i++) {
						anhSPDao.xoa(lst.get(i).getId());
					}
				}

				for (int i = 0; i < fUploads.length; i++) {
					objAnhSanPham = new AnhSanPham();
					fileName = fUploads[i].getOriginalFilename();
					if (fileName != "") {
						// Lấy đường dẫn upload trong web.xml
						String pathStr = request.getServletContext().getInitParameter("file-upload");

						try {
							// Tạo file theo đường dẫn và tên file truyền vào
							File file = new File(pathStr, fileName);
							// Ghi ra file
							fUploads[i].transferTo(file);
							// Gán tên ảnh vào đối tượng
							objAnhSanPham.setAnh(fileName);
							objAnhSanPham.setSanPhamId(objSanPham.getMaSanPham());
						} catch (IOException e) {
							e.printStackTrace();
						}
						anhSPDao.themMoi(objAnhSanPham);
					}
				}
			}

			// Kiểm tra sách tồn tại
			SanPham objSanPhamOld = sanPhamDao.layChiTiet(objSanPham.getId());
			Date ngay = new Date();
			if (objSanPhamOld != null) {
				objSanPham.setNgayTao(objSanPhamOld.getNgayTao());
				if (fUploads[0].getOriginalFilename() != "") {
					fileName = fUploads[0].getOriginalFilename();
					objSanPham.setAnh(fileName);
				}else {
					System.out.println(objSanPhamOld.getAnh());
					objSanPham.setAnh(objSanPhamOld.getAnh());
				}
				objSanPham.setNgayCapNhat(ngay);
				ketQua = sanPhamDao.capNhat(objSanPham);
			} else {
				objSanPham.setAnh(fileName);
				objSanPham.setNgayTao(ngay);
				ketQua = sanPhamDao.themMoi(objSanPham);
			}
		}

		// Nếu thêm mới thành công thì trả về trang danh sách
		if (ketQua) {
			return "redirect:/admin/san-pham";
		}
		return "addsanpham";

	}
	
	@RequestMapping(value = "/tim-san-pham", method = RequestMethod.GET)
	public String timKiem(@ModelAttribute("sanPham") SanPham objSanPham,
			 HttpServletRequest request, Model model) {
		String ten ="", kichThuoc ="", mauSac ="";
		float gia1 =0, gia2 =0;
		int danhMucId = objSanPham.getDanhMucId(), loai =0, 
			hang =objSanPham.getHangSXId(), xx = objSanPham.getXuatXuId();
		Date ngay = null;
		List<SanPham> lstSanPham = sanPhamDao.timKiem(ten, kichThuoc, mauSac, gia1, gia2, danhMucId, loai, hang, xx, ngay, ngay);
		Map<Integer, String> lstHang = layDanhSachHangSX();
		Map<Integer, String> lstXX = layDanhSachXuatXu();
		Map<Integer, String> lstDM = layDanhSachDanhMuc();
		Map<Integer, String> lstLoaiSP = layDSLoaiSP();
		model.addAttribute("sanPham", objSanPham);
		model.addAttribute("lstHang", lstHang);
		model.addAttribute("lstXX", lstXX);
		model.addAttribute("lstDM", lstDM);
		model.addAttribute("lstLoaiSP", lstLoaiSP);
		model.addAttribute("lstSanPham", lstSanPham);
		model.addAttribute("sanPham", new SanPham());
		return "dssanpham";
	}
}

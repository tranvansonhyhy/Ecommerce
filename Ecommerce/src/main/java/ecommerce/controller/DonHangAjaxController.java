package ecommerce.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import ecommerce.model.*;
import ecommerce.service.*;

@RestController
@RequestMapping(value = "/admin")
public class DonHangAjaxController {
	@Autowired
	private HoaDonDao hoaDonDao;
	
	@Autowired
	private TinhTrangDao tinhTrangDao;
	
	@Autowired
	private TrangThaiThanhToanDao trangThaiThanhToanDao;
	
	@RequestMapping(value = "/capnhatdonhang", method = RequestMethod.GET, produces={"application/json"})
	public ResponseEntity<HoaDon> xemChiTiet(@RequestParam("ma") String ma, HttpServletRequest request, HttpServletResponse response) {
		// 1. Create 'jackson' object mapper
		System.out.println(ma);
		HoaDon objHoaDon = new HoaDon();
		objHoaDon = hoaDonDao.layChiTiet(ma);
		return new ResponseEntity<HoaDon>(objHoaDon, HttpStatus.OK);
	}
	
	public Map<Integer, String> layDanhSachTinhTrang()
	{
		List<TinhTrang> lstTinhTrang = tinhTrangDao.layDanhSach();
		Map<Integer, String> lstTT = new HashMap<Integer, String>();
		for(int i = 0; i < lstTinhTrang.size();i++) {
			lstTT.put(lstTinhTrang.get(i).getId(), lstTinhTrang.get(i).getTenTinhTrang());
		}
		return lstTT;
	}
	
	public Map<Integer, String> layDanhSachTrangThai()
	{
		List<TrangThaiThanhToan> lstTrangThai = trangThaiThanhToanDao.layDanhSach();
		Map<Integer, String> lstTT = new HashMap<Integer, String>();
		for(int i = 0; i < lstTrangThai.size();i++) {
			lstTT.put(lstTrangThai.get(i).getId(), lstTrangThai.get(i).getTen());
		}
		return lstTT;
	}
	
	@RequestMapping(value = "/laytinhtrang", method = RequestMethod.GET, produces={"application/json"})
	public ResponseEntity<Map<Integer, String>> layTinhTrang(HttpServletRequest request, HttpServletResponse response) {
		// 1. Create 'jackson' object mapper
		Map<Integer, String> lstTinhTrang = layDanhSachTinhTrang();
		
		return new ResponseEntity<Map<Integer, String>>(lstTinhTrang, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/laytrangthai", method = RequestMethod.GET, produces={"application/json"})
	public ResponseEntity<Map<Integer, String>> layTrangThai(HttpServletRequest request, HttpServletResponse response) {
		// 1. Create 'jackson' object mapper
		Map<Integer, String> lstTrangThai = layDanhSachTrangThai();
		
		return new ResponseEntity<Map<Integer, String>>(lstTrangThai, HttpStatus.OK);
	}
}

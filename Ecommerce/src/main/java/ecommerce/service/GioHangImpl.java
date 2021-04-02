package ecommerce.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ecommerce.model.GioHang;
import ecommerce.model.SanPham;
@Service(value = "gioHangDao")
public class GioHangImpl implements GioHangDao{
	@Autowired
	private SanPhamDao sanPhamDao;
	public HashMap<String, GioHang> themGioHang(String id, HashMap<String, GioHang> gioHang) {
		GioHang itemGioHang = new GioHang();
		SanPham sanPham = sanPhamDao.layChiTiet2(id);
		if (sanPham != null && gioHang.containsKey(id)) {
			System.out.println("ban dang cap nhat");
			itemGioHang = gioHang.get(id);
			itemGioHang.setSoLuong(itemGioHang.getSoLuong()+1);
			itemGioHang.setTongTien(itemGioHang.getSanPham().getGiaTien() *itemGioHang.getSoLuong());
		}else {
			System.out.println("ban dang them moi");
			itemGioHang.setSanPham(sanPham);
			itemGioHang.setSoLuong(1);
			itemGioHang.setTongTien(sanPham.getGiaTien());
			System.out.println("bạn đang thêm mới");
			System.out.println(itemGioHang.getTongTien());
		}
		gioHang.put(id, itemGioHang);
		return gioHang;
	}
	
	public HashMap<String, GioHang> suaGioHang(String id,int soLuong, HashMap<String, GioHang> gioHang) {
		if (gioHang == null) {
			return gioHang;
		}
		GioHang itemGioHang = new GioHang();
		if (gioHang.containsKey(id)) {
			itemGioHang = gioHang.get(id);
			itemGioHang.setSoLuong(soLuong);
			itemGioHang.setTongTien(soLuong * itemGioHang.getSanPham().getGiaTien());
		}
		
		gioHang.put(id, itemGioHang);
		return gioHang;
	}
	
	public HashMap<String, GioHang> xoaGioHang(String id, HashMap<String, GioHang> gioHang) {
		if (gioHang == null) {
			return gioHang;
		}
		if (gioHang.containsKey(id)) {
			gioHang.remove(id);
		}
		return gioHang;
	}
	
	public int tongSoLuong(HashMap<String, GioHang> gioHang) {
		int tongSL  = 0;
		for (Map.Entry<String, GioHang> itemGioHang : gioHang.entrySet()) {
			tongSL += itemGioHang.getValue().getSoLuong();
		}
		return tongSL;
	}
	
	public float tongGiaTien(HashMap<String, GioHang> gioHang) {
		float tongTien = 0;
		for(Map.Entry<String, GioHang> itemGioHang : gioHang.entrySet()) {
			tongTien += itemGioHang.getValue().getTongTien();
		}
		return tongTien;
	}
}

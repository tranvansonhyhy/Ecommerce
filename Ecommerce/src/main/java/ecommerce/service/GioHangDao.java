package ecommerce.service;

import java.util.HashMap;

import ecommerce.model.GioHang;

public interface GioHangDao {
	public HashMap<String, GioHang> themGioHang(String id, HashMap<String, GioHang> gioHang);
	public HashMap<String, GioHang> suaGioHang(String id,int soLuong, HashMap<String, GioHang> gioHang);
	public HashMap<String, GioHang> xoaGioHang(String id, HashMap<String, GioHang> gioHang);
	public int tongSoLuong(HashMap<String, GioHang> gioHang);
	public float tongGiaTien(HashMap<String, GioHang> gioHang);
}

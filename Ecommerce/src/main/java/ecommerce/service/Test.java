package ecommerce.service;
import java.util.*;

import ecommerce.model.*;

public class Test {
	public static void main(String[] args) {
		SanPhamDao sanPhamDao = new SanPhamImpl();
		String ma = "Nồi";
		List<SanPham> lst = sanPhamDao.timKiem3(ma);
		System.out.println(lst.size());
	}
 }

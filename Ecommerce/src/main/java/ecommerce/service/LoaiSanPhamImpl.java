package ecommerce.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import ecommerce.model.LoaiSanPham;
@Service(value = "loaiSPDao")
public class LoaiSanPhamImpl implements LoaiSanPhamDao{
	@Override
	public List<LoaiSanPham> layDanhSach() {
		// Khai báo 1 danh sách
		List<LoaiSanPham> lstLoaiSanPham = new ArrayList<LoaiSanPham>();

		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<LoaiSanPham> query = session.createQuery("from LoaiSanPham", LoaiSanPham.class);

		lstLoaiSanPham = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstLoaiSanPham;
	}

	@Override
	public LoaiSanPham layChiTiet(Integer ma) {
		// Khai báo 1 đối tượng sách
		LoaiSanPham objVT = null;

		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng sách theo mã
		objVT = (LoaiSanPham) session.get(LoaiSanPham.class, ma);
		tx.commit();
		return objVT;
	}

	@Override
	public boolean themMoi(LoaiSanPham obj) {
		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();
		// Thực hiện thêm mới thông tin
		session.save(obj);
		tx.commit();
		return true;
	}

	@Override
	public boolean capNhat(LoaiSanPham obj) {
		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();
		// Thực hiện cập nhật thông tin
		session.update(obj);
		tx.commit();
		return true;
	}

	@Override
	public boolean xoa(Integer ma) {
		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng cần xoá
		LoaiSanPham obj = (LoaiSanPham) session.get(LoaiSanPham.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
			return true;
		}

		return false;
	}
}

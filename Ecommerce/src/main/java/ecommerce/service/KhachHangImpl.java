package ecommerce.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import ecommerce.model.KhachHang;

@Service(value = "khachHangDao")
public class KhachHangImpl implements KhachHangDao {
	@Override
	public List<KhachHang> layDanhSach() {
		// Khai báo 1 danh sách
		List<KhachHang> lstKhachHang = new ArrayList<KhachHang>();

		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<KhachHang> query = session.createQuery("from KhachHang", KhachHang.class);

		lstKhachHang = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstKhachHang;
	}

	@Override
	public KhachHang layChiTiet(Integer ma) {
		// Khai báo 1 đối tượng sách
		KhachHang objVT = null;

		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng sách theo mã
		objVT = (KhachHang) session.get(KhachHang.class, ma);
		tx.commit();
		return objVT;
	}

	@Override
	public boolean themMoi(KhachHang obj) {
		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();
		// Thực hiện thêm mới thông tin
		session.save(obj);
		tx.commit();
		return true;
	}

	@Override
	public boolean capNhat(KhachHang obj) {
		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().openSession();

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
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng cần xoá
		KhachHang obj = (KhachHang) session.get(KhachHang.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
			return true;
		}

		return false;
	}

	@Override
	public KhachHang checkLogin(String tenDangNhap) {
		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();
		// Khởi 1 phiên giao dịch trong hibernate
		Transaction tx = session.beginTransaction();
		TypedQuery<KhachHang> query = session.createQuery(" from KhachHang where Email = :ten or DienThoai = :ten", KhachHang.class);
		// Thiết lập tham số
		query.setParameter("ten", tenDangNhap);
		// Lấy dTaiKhoan sách
		List<KhachHang> lst = query.getResultList();
		tx.commit();
		if (lst.size() > 0) {
			return lst.get(0);
		}
		// Trả về kết quả
		return null;
	}
}

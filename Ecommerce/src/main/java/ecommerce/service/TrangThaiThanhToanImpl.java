package ecommerce.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import ecommerce.model.TrangThaiThanhToan;

@Service(value = "trangThaiThanhToanDao")
public class TrangThaiThanhToanImpl implements TrangThaiThanhToanDao {
	@Override
	public List<TrangThaiThanhToan> layDanhSach() {
		// Khai báo 1 danh sách
		List<TrangThaiThanhToan> lstTrangThaiThanhToan = new ArrayList<TrangThaiThanhToan>();

		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<TrangThaiThanhToan> query = session.createQuery("from TrangThaiThanhToan", TrangThaiThanhToan.class);

		lstTrangThaiThanhToan = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstTrangThaiThanhToan;
	}

	@Override
	public TrangThaiThanhToan layChiTiet(Integer ma) {
		// Khai báo 1 đối tượng sách
		TrangThaiThanhToan objVT = null;

		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng sách theo mã
		objVT = (TrangThaiThanhToan) session.get(TrangThaiThanhToan.class, ma);
		tx.commit();
		return objVT;
	}

	@Override
	public boolean themMoi(TrangThaiThanhToan obj) {
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
	public boolean capNhat(TrangThaiThanhToan obj) {
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
		TrangThaiThanhToan obj = (TrangThaiThanhToan) session.get(TrangThaiThanhToan.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
			return true;
		}

		return false;
	}
}

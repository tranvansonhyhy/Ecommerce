package ecommerce.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import ecommerce.model.TinhTrang;
@Service(value = "tinhTrangDao")
public class TinhTrangImpl implements TinhTrangDao{
	@Override
	public List<TinhTrang> layDanhSach() {
		// Khai báo 1 danh sách
		List<TinhTrang> lstTinhTrang = new ArrayList<TinhTrang>();

		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<TinhTrang> query = session.createQuery("from TinhTrang", TinhTrang.class);

		lstTinhTrang = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstTinhTrang;
	}

	@Override
	public TinhTrang layChiTiet(Integer ma) {
		// Khai báo 1 đối tượng sách
		TinhTrang objVT = null;

		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng sách theo mã
		objVT = (TinhTrang) session.get(TinhTrang.class, ma);
		tx.commit();
		return objVT;
	}

	@Override
	public boolean themMoi(TinhTrang obj) {
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
	public boolean capNhat(TinhTrang obj) {
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
		TinhTrang obj = (TinhTrang) session.get(TinhTrang.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
			return true;
		}

		return false;
	}
}

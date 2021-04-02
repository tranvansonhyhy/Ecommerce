package ecommerce.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import ecommerce.model.XuatXu;

@Service(value = "xuatXuDao")
public class XuatXuImpl implements XuatXuDao {
	@Override
	public List<XuatXu> layDanhSach() {
		// Khai báo 1 danh sách
		List<XuatXu> lstXuatXu = new ArrayList<XuatXu>();

		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<XuatXu> query = session.createQuery("from XuatXu", XuatXu.class);

		lstXuatXu = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstXuatXu;
	}

	@Override
	public XuatXu layChiTiet(Integer ma) {
		// Khai báo 1 đối tượng sách
		XuatXu objVT = null;

		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng sách theo mã
		objVT = (XuatXu) session.get(XuatXu.class, ma);
		tx.commit();
		return objVT;
	}

	@Override
	public boolean themMoi(XuatXu obj) {
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
	public boolean capNhat(XuatXu obj) {
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
		XuatXu obj = (XuatXu) session.get(XuatXu.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
			return true;
		}

		return false;
	}
}

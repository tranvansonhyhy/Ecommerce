package ecommerce.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import ecommerce.model.ChiTietHoaDon;

@Service(value = "chiTietHoaDonDao")
public class ChiTietHoaDonImpl implements ChiTietHoaDonDao {
	@Override
	public List<ChiTietHoaDon> layDanhSach() {
		// Khai báo 1 danh sách
		List<ChiTietHoaDon> lstChiTietHoaDon = new ArrayList<ChiTietHoaDon>();

		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<ChiTietHoaDon> query = session.createQuery("from ChiTietHoaDon", ChiTietHoaDon.class);

		lstChiTietHoaDon = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstChiTietHoaDon;
	}

	@Override
	public ChiTietHoaDon layChiTiet(Integer ma) {
		// Khai báo 1 đối tượng sách
		ChiTietHoaDon objVT = null;

		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng sách theo mã
		objVT = (ChiTietHoaDon) session.get(ChiTietHoaDon.class, ma);
		tx.commit();
		return objVT;
	}

	@Override
	public boolean themMoi(ChiTietHoaDon obj) {
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
	public boolean capNhat(ChiTietHoaDon obj) {
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
		ChiTietHoaDon obj = (ChiTietHoaDon) session.get(ChiTietHoaDon.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
			return true;
		}

		return false;
	}

	@Override
	public List<ChiTietHoaDon> timKiem(String ma) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		// Khai báo điều kiện lọc
		CriteriaQuery<ChiTietHoaDon> cr = cb.createQuery(ChiTietHoaDon.class);
		Root<ChiTietHoaDon> root = cr.from(ChiTietHoaDon.class);
		// Lấy tất cả
		// Nhiều điều kiện
		List<Predicate> restrictions = new ArrayList<Predicate>();
		if (!ma.isEmpty()) {
			restrictions.add(cb.equal(root.get("hoaDonId"), ma));
		}
		cr.select(root).where(restrictions.toArray(new Predicate[restrictions.size()]));
		TypedQuery<ChiTietHoaDon> query = session.createQuery(cr);
		List<ChiTietHoaDon> lst = query.getResultList();
		tx.commit();
		return lst;
	}
}

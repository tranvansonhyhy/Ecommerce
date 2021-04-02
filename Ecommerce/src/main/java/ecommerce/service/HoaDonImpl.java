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

import ecommerce.model.HoaDon;

@Service(value = "hoaDonDao")
public class HoaDonImpl implements HoaDonDao{
	@Override
	public List<HoaDon> layDanhSach() {
		// Khai báo 1 danh sách
		List<HoaDon> lstHoaDon = new ArrayList<HoaDon>();

		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<HoaDon> query = session.createQuery("from HoaDon", HoaDon.class);

		lstHoaDon = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstHoaDon;
	}

	@Override
	public HoaDon layChiTiet(String ma) {
		// Khai báo 1 đối tượng sách
		HoaDon objVT = null;

		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng sách theo mã
		objVT = (HoaDon) session.get(HoaDon.class, ma);
		tx.commit();
		return objVT;
	}

	@Override
	public boolean themMoi(HoaDon obj) {
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
	public boolean capNhat(HoaDon obj) {
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
	public boolean xoa(String ma) {
		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng cần xoá
		HoaDon obj = (HoaDon) session.get(HoaDon.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
			return true;
		}

		return false;
	}

	@Override
	public List<HoaDon> timKiem(int ma) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		// Khai báo điều kiện lọc
		CriteriaQuery<HoaDon> cr = cb.createQuery(HoaDon.class);
		Root<HoaDon> root = cr.from(HoaDon.class);
		// Lấy tất cả
		// Nhiều điều kiện
		List<Predicate> restrictions = new ArrayList<Predicate>();
		if (ma != 0) {
			restrictions.add(cb.equal(root.get("khachHangId"), ma));
		}
		cr.select(root).where(restrictions.toArray(new Predicate[restrictions.size()]));
		TypedQuery<HoaDon> query = session.createQuery(cr);
		List<HoaDon> lst = query.getResultList();
		tx.commit();
		return lst;
	}
}

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

import ecommerce.model.DiaChi;
@Service(value = "diaChiDao")
public class DiaChiImpl implements DiaChiDao {

	@Override
	public List<DiaChi> layDanhSach() {
		// Khai báo 1 danh sách
		List<DiaChi> lstDiaChi = new ArrayList<DiaChi>();
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		TypedQuery<DiaChi> query = session.createQuery("from DiaChi", DiaChi.class);

		lstDiaChi = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstDiaChi;
	}

	@Override
	public DiaChi layChiTiet(String ma) {
		// Khai báo 1 đối tượng sách
		DiaChi obj = null;
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();
		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		obj = (DiaChi) session.get(DiaChi.class, ma);

		tx.commit();

		return obj;
	}

	@Override
	public boolean themMoi(DiaChi obj) {
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();
		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		session.save(obj);
		tx.commit();

		return true;
	}

	@Override
	public boolean capNhat(DiaChi obj) {
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();
		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		session.update(obj);
		tx.commit();

		return true;
	}

	@Override
	public boolean xoa(String ma) {
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();
		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng cần xóa
		DiaChi obj = (DiaChi) session.get(DiaChi.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
		}

		return true;
	}
	

	@Override
	public List<DiaChi> timKiem(String ma) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		// Khai báo điều kiện lọc
		CriteriaQuery<DiaChi> cr = cb.createQuery(DiaChi.class);
		Root<DiaChi> root = cr.from(DiaChi.class);
		// Lấy tất cả
		// Nhiều điều kiện
		List<Predicate> restrictions = new ArrayList<Predicate>();
		if (!ma.isEmpty()) {
			restrictions.add(cb.equal(root.get("maCha"), ma));
		}
		cr.select(root).where(restrictions.toArray(new Predicate[restrictions.size()]));
		TypedQuery<DiaChi> query = session.createQuery(cr);
		List<DiaChi> lst = query.getResultList();
		tx.commit();
		return lst;
	}

}

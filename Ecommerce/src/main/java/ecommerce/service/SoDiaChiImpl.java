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

import ecommerce.model.SoDiaChi;
@Service(value = "soDiaChiDao")
public class SoDiaChiImpl implements SoDiaChiDao {
	@Override
	public List<SoDiaChi> layDanhSach() {
		// Khai báo 1 danh sách
		List<SoDiaChi> lstSoDiaChi = new ArrayList<SoDiaChi>();
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		TypedQuery<SoDiaChi> query = session.createQuery("from SoDiaChi", SoDiaChi.class);

		lstSoDiaChi = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstSoDiaChi;
	}

	@Override
	public SoDiaChi layChiTiet(String ma) {
		// Khai báo 1 đối tượng sách
		SoDiaChi obj = null;
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();
		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		obj = (SoDiaChi) session.get(SoDiaChi.class, ma);

		tx.commit();

		return obj;
	}

	@Override
	public boolean themMoi(SoDiaChi obj) {
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();
		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		session.save(obj);
		tx.commit();

		return true;
	}

	@Override
	public boolean capNhat(SoDiaChi obj) {
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
		SoDiaChi obj = (SoDiaChi) session.get(SoDiaChi.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
		}

		return true;
	}
	

	@Override
	public 	List<SoDiaChi> timKiem(int ma){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		// Khai báo điều kiện lọc
		CriteriaQuery<SoDiaChi> cr = cb.createQuery(SoDiaChi.class);
		Root<SoDiaChi> root = cr.from(SoDiaChi.class);
		// Lấy tất cả
		// Nhiều điều kiện
		List<Predicate> restrictions = new ArrayList<Predicate>();
		if (ma != 0) {
			restrictions.add(cb.equal(root.get("khachHangId"), ma));
		}
		cr.select(root).where(restrictions.toArray(new Predicate[restrictions.size()]));
		TypedQuery<SoDiaChi> query = session.createQuery(cr);
		List<SoDiaChi> lst = query.getResultList();
		tx.commit();
		return lst;
	}
}

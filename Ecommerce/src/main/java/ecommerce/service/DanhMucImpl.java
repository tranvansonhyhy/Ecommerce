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

import ecommerce.model.DanhMuc;

@Service(value = "danhMucDao")
public class DanhMucImpl implements DanhMucDao{
	@Override
	public List<DanhMuc> layDanhSach() {
		// Khai báo 1 danh sách
		List<DanhMuc> lstDanhMuc = new ArrayList<DanhMuc>();

		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<DanhMuc> query = session.createQuery("from DanhMuc", DanhMuc.class);

		lstDanhMuc = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstDanhMuc;
	}

	@Override
	public DanhMuc layChiTiet(Integer ma) {
		// Khai báo 1 đối tượng sách
		DanhMuc objVT = null;

		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng sách theo mã
		objVT = (DanhMuc) session.get(DanhMuc.class, ma);
		tx.commit();
		return objVT;
	}

	@Override
	public boolean themMoi(DanhMuc obj) {
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
	public boolean capNhat(DanhMuc obj) {
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
		DanhMuc obj = (DanhMuc) session.get(DanhMuc.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
			return true;
		}

		return false;
	}

	@Override
	public List<DanhMuc> timKiem(int ma) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		// Khai báo điều kiện lọc
		CriteriaQuery<DanhMuc> cr = cb.createQuery(DanhMuc.class);
		Root<DanhMuc> root = cr.from(DanhMuc.class);
		// Lấy tất cả
		// Nhiều điều kiện
		List<Predicate> restrictions = new ArrayList<Predicate>();
		
		restrictions.add(cb.equal(root.get("danhMucCha"), ma));
		
		cr.select(root).where(restrictions.toArray(new Predicate[restrictions.size()]));
		TypedQuery<DanhMuc> query = session.createQuery(cr);
		List<DanhMuc> lst = query.getResultList();
		tx.commit();
		return lst;
	}
}

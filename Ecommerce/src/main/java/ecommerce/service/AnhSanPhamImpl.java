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

import ecommerce.model.AnhSanPham;

@Service(value = "anhSPDao")
public class AnhSanPhamImpl implements AnhSanPhamDao {
	@Override
	public List<AnhSanPham> layDanhSach() {
		// Khai báo 1 danh sách
		List<AnhSanPham> lstAnhSanPham = new ArrayList<AnhSanPham>();

		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<AnhSanPham> query = session.createQuery("from AnhSanPham", AnhSanPham.class);

		lstAnhSanPham = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstAnhSanPham;
	}

	@Override
	public AnhSanPham layChiTiet(Integer ma) {
		// Khai báo 1 đối tượng sách
		AnhSanPham objVT = null;

		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng sách theo mã
		objVT = (AnhSanPham) session.get(AnhSanPham.class, ma);
		tx.commit();
		return objVT;
	}

	@Override
	public boolean themMoi(AnhSanPham obj) {
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
	public boolean capNhat(AnhSanPham obj) {
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
		AnhSanPham obj = (AnhSanPham) session.get(AnhSanPham.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
			return true;
		}

		return false;
	}

	@Override
	public List<AnhSanPham> timKiem(String sanPhamId) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		// Khai báo điều kiện lọc
		CriteriaQuery<AnhSanPham> cr = cb.createQuery(AnhSanPham.class);
		Root<AnhSanPham> root = cr.from(AnhSanPham.class);
		// Lấy tất cả
		// Nhiều điều kiện
		List<Predicate> restrictions = new ArrayList<Predicate>();
		if (!sanPhamId.isEmpty()) {
			restrictions.add(cb.equal(root.get("sanPhamId"), sanPhamId));
		}
		cr.select(root).where(restrictions.toArray(new Predicate[restrictions.size()]));
		TypedQuery<AnhSanPham> query = session.createQuery(cr);
		List<AnhSanPham> lst = query.getResultList();
		tx.commit();
		return lst;
	}
}

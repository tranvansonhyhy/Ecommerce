package ecommerce.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.TypedQuery;
//import javax.persistence.criteria.CriteriaBuilder;
//import javax.persistence.criteria.CriteriaQuery;
//import javax.persistence.criteria.Predicate;
//import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import ecommerce.model.SanPham;


@Service(value = "sanPhamDao")
public class SanPhamImpl implements SanPhamDao {
	@Override
	public List<SanPham> layDanhSach() {
		// Khai báo 1 danh sách
		List<SanPham> lstSanPham = new ArrayList<SanPham>();
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		TypedQuery<SanPham> query = session.createQuery("from SanPham", SanPham.class);

		lstSanPham = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstSanPham;
	}

	@Override
	public SanPham layChiTiet(Integer ma) {
		// Khai báo 1 đối tượng sách
		SanPham obj = null;
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();
		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		obj = (SanPham) session.get(SanPham.class, ma);

		tx.commit();

		return obj;
	}

	@Override
	public boolean themMoi(SanPham obj) {
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();
		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		session.save(obj);
		tx.commit();

		return true;
	}

	@Override
	public boolean capNhat(SanPham obj) {
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();
		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		session.update(obj);
		tx.commit();

		return true;
	}

	@Override
	public boolean xoa(Integer ma) {
		// Khai báo 1 kết nối
		Session session = HibernateUtil.getSessionFactory().openSession();
		// Khởi tạo 1 tranction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng cần xóa
		SanPham obj = (SanPham) session.get(SanPham.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
		}

		return true;
	}
	
	
	@Override
	public SanPham layChiTiet2(String ma) {
		// Khai báo 1 danh sách
		SanPham obj = null;
		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().openSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<SanPham> query = session.createNativeQuery("Select * from SanPham where MaSanPham ='" + ma + "'",
				SanPham.class);

		obj = query.getSingleResult();

		tx.commit();

		// Trả về danh sách
		return obj;
	}

	@Override
	public List<SanPham> timKiem(String ten, String kichThuoc, String mauSac, float gia1, float gia2,
			int danhMuc, int loaiSp, int hang, int xuatxu, Date ngay1, Date ngay2) {
			Session session = HibernateUtil.getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
			CriteriaBuilder cb = session.getCriteriaBuilder();
			// Khai báo điều kiện lọc
			CriteriaQuery<SanPham> cr = cb.createQuery(SanPham.class);
			Root<SanPham> root = cr.from(SanPham.class);
			// Lấy tất cả
			// Nhiều điều kiện
			List<Predicate> restrictions = new ArrayList<Predicate>();
			if (!ten.isEmpty()) {
			restrictions.add(cb.like(root.get("tenSanPham").as(String.class), "%" + ten + "%"));
			}
			if (!kichThuoc.isEmpty()) {
				restrictions.add(cb.like(root.get("kichThuoc").as(String.class), "%" + ten + "%"));
			}
			if (!mauSac.isEmpty()) {
				restrictions.add(cb.like(root.get("mauSac").as(String.class), "%" + ten + "%"));
			}
			if (gia1 != 0 && gia2 != 0) {
				restrictions.add(cb.between(root.get("giaTien"), gia1, gia2));
			}
			if (danhMuc != 0) {
			restrictions.add(cb.equal(root.get("danhMucId"), danhMuc));
			}
			if (loaiSp != 0) {
				restrictions.add(cb.equal(root.get("loaiSPId"), loaiSp));
			}
			if (hang != 0) {
				restrictions.add(cb.equal(root.get("hangSXId"), hang));
			}
			if (xuatxu != 0) {
				restrictions.add(cb.equal(root.get("xuatXuId"), xuatxu));
			}
			if (ngay1 != null && ngay2 != null) {
			restrictions.add(cb.between(root.<Date>get("ngayTao"), ngay1, ngay2));
			}
			cr.select(root).where(restrictions.toArray(new Predicate[restrictions.size()]));
			TypedQuery<SanPham> query = session.createQuery(cr);
			List<SanPham> lst = query.getResultList();
			tx.commit();
			return lst;
	}

	@Override
	public List<SanPham> timKiem2(int ma) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		// Khai báo điều kiện lọc
		CriteriaQuery<SanPham> cr = cb.createQuery(SanPham.class);
		Root<SanPham> root = cr.from(SanPham.class);
		// Lấy tất cả
		// Nhiều điều kiện
		List<Predicate> restrictions = new ArrayList<Predicate>();
		
		if (ma != 0) {
			restrictions.add(cb.equal(root.get("danhMucId"), ma));
		}
		cr.select(root).where(restrictions.toArray(new Predicate[restrictions.size()]));
		TypedQuery<SanPham> query = session.createQuery(cr);
		List<SanPham> lst = query.getResultList();
		tx.commit();
		return lst;
	}

	@Override
	public List<SanPham> timKiem3(String ma) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		// Khai báo điều kiện lọc
		CriteriaQuery<SanPham> cr = cb.createQuery(SanPham.class);
		Root<SanPham> root = cr.from(SanPham.class);
		// Lấy tất cả
		// Nhiều điều kiện
		List<Predicate> restrictions = new ArrayList<Predicate>();
		
		if (!ma.isEmpty()) {
			restrictions.add(cb.like(root.get("tenSanPham").as(String.class), "%" + ma + "%"));
		}
		cr.select(root).where(restrictions.toArray(new Predicate[restrictions.size()]));
		TypedQuery<SanPham> query = session.createQuery(cr);
		List<SanPham> lst = query.getResultList();
		tx.commit();
		return lst;
	}
}

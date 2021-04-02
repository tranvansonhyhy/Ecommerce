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

import ecommerce.model.NguoiDung;

@Service(value = "nguoiDungDao")
public class NguoiDungImpl implements NguoiDungDao {
	@Override
	public List<NguoiDung> layDanhSach() {
		// Khai báo 1 dTaiKhoan sách
		List<NguoiDung> lstTaiKhoan = new ArrayList<NguoiDung>();

		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<NguoiDung> query = session.createQuery("from NguoiDung", NguoiDung.class);

		lstTaiKhoan = query.getResultList();

		tx.commit();

		// Trả về dTaiKhoan sách
		return lstTaiKhoan;
	}
	@Override
	public NguoiDung layChiTiet(Integer ma) {
		// Khai báo 1 đối tượng sách
		NguoiDung objND = null;

		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng sách theo mã
		objND = (NguoiDung) session.get(NguoiDung.class, ma);
		tx.commit();
		return objND;
	}
	@Override
	public boolean themMoi(NguoiDung obj) {
		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();
		// Thực hiện thêm mới thông tin
		session.save(obj);
		tx.commit();
		return false;
	}
	@Override
	public boolean capNhat(NguoiDung obj) {
		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();
		// Thực hiện cập nhật thông tin
		session.update(obj);
		tx.commit();

		return false;
	}
	@Override
	public boolean xoa(Integer ma) {
		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng cần xoá
		NguoiDung obj = (NguoiDung) session.get(NguoiDung.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
			return true;
		}

		return false;
	}
	@Override
	public NguoiDung ktraDN(String taiKhoan) {
		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		// Khởi 1 phiên giao dịch trong hibernate
		Transaction tx = session.beginTransaction();
		TypedQuery<NguoiDung> query = session.createQuery(" from NguoiDung where taiKhoan = :ten", NguoiDung.class);
		//Thiết lập tham số
		query.setParameter("ten", taiKhoan);
		// Lấy dTaiKhoan sách
		List<NguoiDung> lst = query.getResultList();
		tx.commit();
		if(lst.size() > 0)
		{
		return lst.get(0);
		}
		// Trả về kết quả
		return null;
	}
	@Override
	public List<NguoiDung> timKiem(String tuKhoa, int vaiTroId) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = session.beginTransaction();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		// Khai báo điều kiện lọc
		CriteriaQuery<NguoiDung> cr = cb.createQuery(NguoiDung.class);
		Root<NguoiDung> root = cr.from(NguoiDung.class);
		// Lấy tất cả
		// Nhiều điều kiện
		List<Predicate> restrictions = new ArrayList<Predicate>();
		if (!tuKhoa.isEmpty()) {
			restrictions.add(cb.like(root.get("taiKhoan").as(String.class), "%" + tuKhoa + "%"));
		}
		if (vaiTroId != 0) {
			restrictions.add(cb.equal(root.get("vaiTroId"), vaiTroId));
		}
		cr.select(root).where(restrictions.toArray(new Predicate[restrictions.size()]));
		TypedQuery<NguoiDung> query = session.createQuery(cr);
		List<NguoiDung> lst = query.getResultList();
		tx.commit();
		return lst;
	}

	
	
}

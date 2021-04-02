package ecommerce.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import ecommerce.model.HangSanXuat;
@Service(value = "hangSXDao")
public class HangSanXuatImpl implements HangSanXuatDao{
	@Override
	public List<HangSanXuat> layDanhSach() {
		// Khai báo 1 danh sách
		List<HangSanXuat> lstHangSanXuat = new ArrayList<HangSanXuat>();

		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<HangSanXuat> query = session.createQuery("from HangSanXuat", HangSanXuat.class);

		lstHangSanXuat = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstHangSanXuat;
	}

	@Override
	public HangSanXuat layChiTiet(Integer ma) {
		// Khai báo 1 đối tượng sách
		HangSanXuat objVT = null;

		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng sách theo mã
		objVT = (HangSanXuat) session.get(HangSanXuat.class, ma);
		tx.commit();
		return objVT;
	}

	@Override
	public boolean themMoi(HangSanXuat obj) {
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
	public boolean capNhat(HangSanXuat obj) {
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
		HangSanXuat obj = (HangSanXuat) session.get(HangSanXuat.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
			return true;
		}

		return false;
	}
}

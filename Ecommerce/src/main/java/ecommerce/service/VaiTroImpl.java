package ecommerce.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import ecommerce.model.VaiTro;
@Service(value = "vaiTroDao")
public class VaiTroImpl implements VaiTroDao {
	@Override
	public List<VaiTro> layDanhSach() {
		// Khai báo 1 danh sách
		List<VaiTro> lstVaiTro = new ArrayList<VaiTro>();

		// Kết nối đến db qua hibernate
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		TypedQuery<VaiTro> query = session.createQuery("from VaiTro", VaiTro.class);

		lstVaiTro = query.getResultList();

		tx.commit();

		// Trả về danh sách
		return lstVaiTro;
	}

	@Override
	public VaiTro layChiTiet(Integer ma) {
		// Khai báo 1 đối tượng sách
		VaiTro objVT = null;

		// Kết nối đến database
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		// Khởi tạo 1 transaction
		Transaction tx = session.beginTransaction();

		// Lấy đối tượng sách theo mã
		objVT = (VaiTro) session.get(VaiTro.class, ma);
		tx.commit();
		return objVT;
	}

	@Override
	public boolean themMoi(VaiTro obj) {
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
	public boolean capNhat(VaiTro obj) {
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
		VaiTro obj = (VaiTro) session.get(VaiTro.class, ma);

		if (obj != null) {
			session.delete(obj);
			tx.commit();
			return true;
		}

		return false;
	}
}

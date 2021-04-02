package ecommerce.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ecommerce.model.VaiTro;
import ecommerce.service.VaiTroDao;

@Controller
@RequestMapping(value = "/admin")
public class VaiTroController {
	@Autowired
	private VaiTroDao vaiTroDao;
	@RequestMapping(value = "/vai-tro", method = RequestMethod.GET)
	public String danhSach(Model model) {
		List<VaiTro> lstVaiTro = vaiTroDao.layDanhSach();
		model.addAttribute("lstVaiTro", lstVaiTro);
		return "dsvaitro";
	}
}

package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("/showSupplier")
	public String  showSupplier(Model m)
	{
		List<Supplier> supplierList =supplierDAO.retriveSupplier();
		m.addAttribute("supplierList", supplierList);
		return "Supplier";
	}
	
	@RequestMapping(value="/insertsupplier" , method=RequestMethod.POST)
	public String insertsupplier(@RequestParam("supplierId")int supplierId, @RequestParam("supplierName")String supplierName, Model m) {
		Supplier supplier= new Supplier();
		supplier.setSupplierId(supplierId);
		supplier.setSupplierName(supplierName);
		
		supplierDAO.addSupplier(supplier);
		List<Supplier> supplierList= supplierDAO.retriveSupplier();
		m.addAttribute("supplierList", supplierList);
		return "Supplier";
		
		
		
	}
}

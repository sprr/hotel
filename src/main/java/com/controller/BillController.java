package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.biz.BillBiz;
import com.biz.CommentBiz;
import com.entity.Bill;
import com.entity.Orders;

@Controller
@RequestMapping("/bill.do")
public class BillController {

	@Resource
	private BillBiz billBiz;
	
	
	// 后台查询订单信息 贺欢
		@RequestMapping(params ="method=FindBill")
		public @ResponseBody String FindBill(@RequestParam("oid") String oid,@RequestParam("pagenumber") int pagenumber) {
			List<Bill> listorders = this.billBiz.findBill(oid,pagenumber);
			String string=""+JSON.toJSONString(listorders,SerializerFeature.DisableCircularReferenceDetect);
		return string;
		}
		
		//订单查最大页码数 贺欢
		@RequestMapping(params ="method=getBillCount")
		public @ResponseBody String getBillCount(@RequestParam("oid") String oid) {
			String str = "" + this.billBiz.findBillCount2(oid);
			return str;
		}
		
		// 后台添加非会员信息方法 贺欢
		@RequestMapping(params ="method=AddBill")
		public String AddBill(@RequestParam("oid") String oid,@RequestParam("phone") String phone,@RequestParam("rtype") String rtype,@RequestParam("btime") String btime,@RequestParam("zname") String zname,@RequestParam("bprice") String bprice,@RequestParam("initime") String initime,@RequestParam("outtime") String outtime,@RequestParam("exist") String exist) {
			this.billBiz.addBill(oid,phone, rtype, btime, zname, bprice, initime, outtime, exist);
			return "redirect:pages/economics/economics-message.jsp";
		}
}

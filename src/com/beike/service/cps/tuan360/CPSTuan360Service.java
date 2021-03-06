package com.beike.service.cps.tuan360;

import java.util.List;
import java.util.Map;

/**      
 * project:beiker  
 * Title:团360CPS
 * Description:
 * Copyright:Copyright (c) 2012
 * Company:Sinobo
 * @author qiaowb  
 * @date Aug 9, 2012 2:34:40 PM     
 * @version 1.0
 */
public interface CPSTuan360Service {
	/**
	 * 支付前保存商品订单数据
	 * @param listOrderParams
	 * @return
	 */
	public int saveOrderNoPay(Map<String, Object> params);
	
	/**
	 * 支付成功后更新商品订单状态
	 * @param trxOrderId
	 * @param newStatus
	 * @param oldStatus
	 * @return
	 */
	public int updateOrderStatus(Long trxOrderId, int newStatus, int oldStatus);
	
	/**
	 * 通过商品订单号查询CPS订单
	 * @param lstOrderIds
	 * @param maxCount
	 * @return
	 */
	public List<Map<String,Object>> queryOrdersByOrderId(List<Long> lstOrderIds, int maxCount);
	
	/**
	 * 通过商品订单创建时间查询CPS订单
	 * @param startTime
	 * @param endTime
	 * @param lastOrderId
	 * @param maxCount
	 * @return
	 */
	public List<Map<String,Object>> queryOrdersByCreateTime(String startTime, String endTime, Long lastOrderId, int maxCount);
	
	/**
	 * 通过商品订单最后更新时间查询CPS订单
	 * @param startTime
	 * @param endTime
	 * @param lastOrderId
	 * @param maxCount
	 * @return
	 */
	public List<Map<String,Object>> queryOrdersByUpdTime(String updStartTime, String updEndTime, Long lastOrderId, int maxCount);
	
	/**
	 * 通过商品订单创建时间查询对账月份CPS订单
	 * @param billMonth
	 * @param lastOrderId
	 * @param maxCount
	 * @return
	 */
	public List<Map<String,Object>> queryOrdersByBillMonth(String billMonth, Long lastOrderId, int maxCount);
	
	/**
	 * 订单退款
	 * @param trxGoodsId
	 * @return
	 */
	public int cancelOrder(Long trxGoodsId);
}

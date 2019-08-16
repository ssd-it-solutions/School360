package com.ssdit.edu.services;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ssdit.edu.dto.MonthlyPurchaseSummaryDTO;
import com.ssdit.edu.entity.InventoryItem;
import com.ssdit.edu.repo.InventoryItemRepository;

@Component
public class FoodPurchasedInfo {
	@Autowired
	EntityManager entityManager;
	
	@Autowired
	InventoryItemRepository itemRepository;

	public Map<String, List<MonthlyPurchaseSummaryDTO>> getFoodPurchaseInfo(Map<String, Double> totalPurchaseByMonth,Map<String,Double> totalPurchaseByItem,Map<String,Integer> totalPurchaseQuanByItem) {

		Map<String, List<MonthlyPurchaseSummaryDTO>> mapOfDailyMeasures = new LinkedHashMap<>();
		
		//int[] items = { 2, 1, 7, 3, 9, 18, 23, 20, 21, 22 };
		int[] items = { 1, 2, 3, 5, 6, 11, 29, 27, 16, 28 };
		
		Query query = null;
		double wheateAdd=0;
		String[] months = { "April - 2018", "May - 2018", "June - 2018", "July - 2018", "Aug - 2018", "Sept - 2018",
				"Oct - 2018", "Nov - 2018", "Dec - 2018", "Jan - 2019", "Feb - 2019", "March - 2019" };

		for (int i = 0; i < months.length; i++) {
			List<MonthlyPurchaseSummaryDTO> listOfItemWisePurchaseDetails = new ArrayList<>();
			double totalExpenseByMonth = 0;
			for (int j = 0; j < items.length; j++) {
				query = entityManager
						.createNativeQuery("select sum(i.paid_amount) as total,sum(i.quantity) as quantity from"
								+ " inventory_purchase as i where " + "i.item_id=? and i.month_year=? ");
				query.setParameter(1, items[j]);
				query.setParameter(2, months[i]);
				@SuppressWarnings("unchecked")
				List<Object[]> result = query.getResultList();

				InventoryItem item = itemRepository.findById(items[j]);
				
				if (null != result) {
					for (Object[] resultObject : result) {
						if (null != resultObject[0] && null != resultObject[1]) {
							double total_prices = Double.parseDouble(resultObject[0].toString());
							int quantity = Integer.parseInt(resultObject[1].toString());
							listOfItemWisePurchaseDetails.add(new MonthlyPurchaseSummaryDTO(item.getItem(), total_prices, quantity));
							
							if(totalPurchaseByItem.containsKey(item.getItem())) {
								totalPurchaseByItem.put(item.getItem(), totalPurchaseByItem.get(item.getItem())+total_prices);
								totalPurchaseQuanByItem.put(item.getItem(), totalPurchaseQuanByItem.get(item.getItem())+quantity);
							}else {
								totalPurchaseByItem.put(item.getItem(), total_prices);
								totalPurchaseQuanByItem.put(item.getItem(), quantity);
							}
							
							totalExpenseByMonth = totalExpenseByMonth + total_prices;						
							
						} else {
							listOfItemWisePurchaseDetails.add(new MonthlyPurchaseSummaryDTO(item.getItem(), 0, 0));
							totalExpenseByMonth = totalExpenseByMonth + 0;
							wheateAdd=wheateAdd+listOfItemWisePurchaseDetails.get(0).getTotalPrice();
							if(totalPurchaseByItem.containsKey(item.getItem())) {
								totalPurchaseByItem.put(item.getItem(), totalPurchaseByItem.get(item.getItem())+0);
								totalPurchaseQuanByItem.put(item.getItem(), totalPurchaseQuanByItem.get(item.getItem())+0);
							}else {
								totalPurchaseByItem.put(item.getItem(), new Double(0));
								totalPurchaseQuanByItem.put(item.getItem(),  new Integer(0));
							}
						}
					}
				}
			}
			mapOfDailyMeasures.put(months[i], listOfItemWisePurchaseDetails);
			totalPurchaseByMonth.put(months[i], totalExpenseByMonth);
			
		}
		
		System.out.println("wheateAdd : "+totalPurchaseByItem);
		System.out.println("wheateAdd : "+totalPurchaseQuanByItem);
		return mapOfDailyMeasures;
	}

}

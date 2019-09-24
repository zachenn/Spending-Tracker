//
//  TransactionViewModel.swift
//  SpendingTracker
//
//  Created by Zach Chen on 5/18/19.
//  Copyright © 2019 Zach Chen. All rights reserved.
//

import UIKit

class TransactionViewModel {
	
	// MARK: - Properties
	var transactionCellViewModels: [String: [TransactionCellViewModel]] = [:]
	var categories: [String] = []
	
	// FIXME: can use bloom filter here
	private var categorySet: Set<String> = []
	
	var dateFormatter: DateFormatter = {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "yyyy-MM-dd"
		return dateFormatter
	}()
	
	// MARK: - Methods
	func add(transactionItem: TransactionItem) {
		let transactionCellViewModel = TransactionCellViewModel(transactionItem: transactionItem)
		let category = dateFormatter.string(from: transactionItem.date) 
		
		if categorySet.contains(category) {
			transactionCellViewModels[category]?.append(transactionCellViewModel)
		} else {
			categorySet.insert(category)
			categories.append(category)
			categories.sort()
			transactionCellViewModels[category] = [transactionCellViewModel]
		}
	}
	
}

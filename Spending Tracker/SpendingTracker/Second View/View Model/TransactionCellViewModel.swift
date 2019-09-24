//
//  TransactionCellViewModel.swift
//  SpendingTracker
//
//  Created by Zach Chen on 6/12/19.
//  Copyright © 2019 Zach Chen. All rights reserved.
//

import UIKit

struct TransactionCellViewModel {
	
	// MARK: - Properties
	private var transactionItem: TransactionItem?
	private var dateFormatter = DateFormatter()
	
	var title: String {
		return transactionItem?.title ?? ""
	}
	
	var date: String {
		dateFormatter.dateFormat = "MMM dd,yyyy"
		return dateFormatter.string(from: transactionItem?.date ?? Date(timeIntervalSinceNow: 0))
	}
	
	var amount: String {
		return transactionItem?.amount ?? ""
	}
	
	// MARK: - Initializers
	init(transactionItem: TransactionItem) {
		self.transactionItem = transactionItem
	}
	
}

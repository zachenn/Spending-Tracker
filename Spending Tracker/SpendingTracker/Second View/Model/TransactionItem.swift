//
//  TransactionItem.swift
//  SpendingTracker
//
//  Created by Zach Chen on 6/12/19.
//  Copyright © 2019 Zach Chen. All rights reserved.
//

import UIKit

struct TransactionItem {
	
	// MARK: - Properties
	var category: String
	var title: String
	
	// FIXME: change to date and int later
	var date: Date
	var amount: String
	
	// MARK: - Initializers
	init(category: String, title: String, date: Date, amount: String) {
		self.category = category
		self.title = title
		self.date = date
		self.amount = amount
	}
	
}

//
//  TransactionViewController.swift
//  SpendingTracker
//
//  Created by Zach Chen on 5/18/19.
//  Copyright © 2019 Zach Chen. All rights reserved.
//

import UIKit

class TransactionViewController: UIViewController {
	
	// MARK: - Properties
	var transactionView: TransactionView! { return self.view as? TransactionView }
	var transactionDataSource = TransactionDataSource()
	
	// MARK: - Lifecycle Methods
	override func loadView() {
		view = TransactionView(frame: UIScreen.main.bounds)
		transactionView.transactionTableView.dataSource = transactionDataSource
		navigationItem.title = "Your Transactions"
	}
	
	override func viewDidLoad() {
		addDummyTransactions()
		addNavigationItems()
	}
	
	// MARK: - Methods
	private func addDummyTransactions() {
		let t1 = TransactionItem(category: "Food", title: "Dinner", date: Date(timeIntervalSinceNow: 100), amount: "$40")
		let t2 = TransactionItem(category: "Transportation", title: "Dinner", date: Date(timeIntervalSinceNow: 100), amount: "$50")
		let t3 = TransactionItem(category: "Groceries", title: "Dinner", date: Date(timeIntervalSinceNow: 100), amount: "$60")
		
		transactionDataSource.transactionViewModel.add(transactionItem: t1)
		transactionDataSource.transactionViewModel.add(transactionItem: t2)
		transactionDataSource.transactionViewModel.add(transactionItem: t3)
	}
	
	private func addNavigationItems() {
		let addButton = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTransactionDidPress))
		navigationItem.rightBarButtonItem = addButton
	}
	
	@objc private func addTransactionDidPress() {
		let t1 = TransactionItem(category: "Apple", title: "Lunch", date: Date(timeIntervalSince1970: 100), amount: "$40")
		transactionDataSource.transactionViewModel.add(transactionItem: t1)
		
		transactionView.transactionTableView.reloadData()
	}
}

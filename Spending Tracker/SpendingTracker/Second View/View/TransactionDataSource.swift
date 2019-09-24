//
//  TransactionDataSource.swift
//  SpendingTracker
//
//  Created by Zach Chen on 6/12/19.
//  Copyright © 2019 Zach Chen. All rights reserved.
//

import UIKit

class TransactionDataSource: NSObject {
	
	var transactionViewModel = TransactionViewModel()
	
}

extension TransactionDataSource: UITableViewDataSource {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return transactionViewModel.categories.count
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return transactionViewModel.categories[section]
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		let category = transactionViewModel.categories[section]
		return transactionViewModel.transactionCellViewModels[category]?.count ?? 0
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "transactionCell", for: indexPath) as! TransactionCellView
		let category = transactionViewModel.categories[indexPath.section]
		cell.transactionCellViewModel = transactionViewModel.transactionCellViewModels[category]?[indexPath.row]
		return cell
	}
}

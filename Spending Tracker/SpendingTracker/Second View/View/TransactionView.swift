//
//  TransactionView.swift
//  SpendingTracker
//
//  Created by Zach Chen on 5/18/19.
//  Copyright © 2019 Zach Chen. All rights reserved.
//

import UIKit

class TransactionView: UIView {
	
	// MARK: - Properties
	let transactionTableView = UITableView()

	// MARK: - Initializers
	override init(frame: CGRect) {
		super.init(frame: frame)
		configureView()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	// MARK: - Methods
	private func configureUIModifications() {
		backgroundColor = .white
		
		transactionTableView.translatesAutoresizingMaskIntoConstraints = false
		transactionTableView.register(TransactionCellView.self, forCellReuseIdentifier: "transactionCell")
	}
	
	private func configureView() {
		configureUIModifications()
		let safeArea = safeAreaLayoutGuide
		
		addSubview(transactionTableView)
		transactionTableView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
		transactionTableView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
		transactionTableView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
		transactionTableView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
	}
	
}

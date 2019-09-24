//
//  TransactionCellView.swift
//  SpendingTracker
//
//  Created by Zach Chen on 6/12/19.
//  Copyright © 2019 Zach Chen. All rights reserved.
//

import UIKit

class TransactionCellView: UITableViewCell {
	
	// MARK: - Properties
	var transactionCellViewModel: TransactionCellViewModel? {
		didSet {
			self.title.text = transactionCellViewModel?.title
			self.date.text = transactionCellViewModel?.date
			self.amount.text = transactionCellViewModel?.amount
		}
	}
	
	var title = UILabel()
	var date = UILabel()
	var amount = UILabel()
	
	// MARK: - Initializers
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		configureView()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	// MARK: - Methods
	private func configureView() {
		
		let marginGuide = contentView.layoutMarginsGuide
		
		contentView.addSubview(title)
		title.translatesAutoresizingMaskIntoConstraints = false
		title.topAnchor.constraint(equalTo: marginGuide.topAnchor).isActive = true
		title.leftAnchor.constraint(equalTo: marginGuide.leftAnchor).isActive = true
		
		title.textColor = .black
		
		contentView.addSubview(date)
		date.translatesAutoresizingMaskIntoConstraints = false
		date.topAnchor.constraint(equalTo: title.bottomAnchor).isActive = true
		date.bottomAnchor.constraint(equalTo: marginGuide.bottomAnchor).isActive = true
		date.leftAnchor.constraint(equalTo: marginGuide.leftAnchor).isActive = true
		
		date.textColor = .lightGray
		
		contentView.addSubview(amount)
		amount.translatesAutoresizingMaskIntoConstraints = false
		amount.topAnchor.constraint(equalTo: marginGuide.topAnchor).isActive = true
		amount.rightAnchor.constraint(equalTo: marginGuide.rightAnchor).isActive = true
		
		amount.textColor = .darkGray
	}
}

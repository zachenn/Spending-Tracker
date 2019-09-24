//
//  FirstView.swift
//  SpendingTracker
//
//  Created by Zach Chen on 5/18/19.
//  Copyright © 2019 Zach Chen. All rights reserved.
//

import UIKit

class FirstView: UIView {
	
	// MARK: Init
	override init(frame: CGRect) {
		super.init(frame: frame)
		configureView()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	// MARK: VIEW OBJECTS
	
	
	// MARK: SETUP VIEW
	private func configureUIModifications() {
		backgroundColor = .white
	}
	
	private func configureView() {
		configureUIModifications()
		
		let safeArea = safeAreaLayoutGuide
		
		
	}
}

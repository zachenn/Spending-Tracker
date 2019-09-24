//
//  ThirdViewController.swift
//  SpendingTracker
//
//  Created by Zach Chen on 5/18/19.
//  Copyright © 2019 Zach Chen. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
	
	var thirdView: ThirdView! { return self.view as? ThirdView }
	
	override func loadView() {
		view = ThirdView(frame: UIScreen.main.bounds)
		thirdView.configureView()
		navigationItem.title = "Third"
	}
	
	override func viewDidLoad() {
		
	}
}

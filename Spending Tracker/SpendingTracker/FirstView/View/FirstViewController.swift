//
//  FirstViewController.swift
//  SpendingTracker
//
//  Created by Zach Chen on 5/18/19.
//  Copyright © 2019 Zach Chen. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
	
	var firstView: FirstView! { return self.view as? FirstView }
	
	override func loadView() {
		view = FirstView(frame: UIScreen.main.bounds)
		navigationItem.title = "First"
	}
	
	override func viewDidLoad() {
		
	}
}

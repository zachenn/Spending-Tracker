//
//  CustomTabBarController.swift
//  SpendingTracker
//
//  Created by Zach Chen on 5/18/19.
//  Copyright © 2019 Zach Chen. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
	
	override func viewDidLoad() {
		
		// view controllers
		viewControllers = [createNavControllerWithTitle(title: "First", imageName: "circle", storyboardName: "FirstViewControllerNav"),
						   createNavControllerWithTitle(title: "Transactions", imageName: "square", storyboardName: "SecondViewControllerNav"),
						   createNavControllerWithTitle(title: "Third", imageName: "triangle", storyboardName: "ThirdViewControllerNav")]
	}
	
	private func createNavControllerWithTitle(title: String, imageName: String, storyboardName: String) -> UINavigationController {
		let viewControllerNav = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: storyboardName) as! UINavigationController
		viewControllerNav.tabBarItem.title = title
		viewControllerNav.tabBarItem.image = UIImage(named: imageName)
		return viewControllerNav
	}
}

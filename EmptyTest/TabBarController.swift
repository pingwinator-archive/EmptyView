//
//  TabBarController.swift
//  EmptyTest
//
//  Created by Vasyl Liutikov on 31.01.19.
//  Copyright © 2019 pingwinator. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let first = FirstViewController()
        first.title = "First"
        let firstNavVC = UINavigationController(rootViewController: first)
        let second = SecondViewController()
        second.title = "Second"
        let secondNavVC = UINavigationController(rootViewController: second)
        let third = ThirdViewController()
        third.title = "Third"
        let thirdNavVC = UINavigationController(rootViewController: third)
        viewControllers = [firstNavVC, secondNavVC, thirdNavVC]
    }
    
    
}

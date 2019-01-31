//
//  ThirdViewController.swift
//  EmptyTest
//
//  Created by Vasyl Liutikov on 31.01.19.
//  Copyright © 2019 pingwinator. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    let emptyView = EmptyView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(emptyView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        emptyView.frame = view.bounds
    }

}

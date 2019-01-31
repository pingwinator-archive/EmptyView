//
//  EmptyView.swift
//  EmptyTest
//
//  Created by Vasyl Liutikov on 31.01.19.
//  Copyright © 2019 pingwinator. All rights reserved.
//

import UIKit

class EmptyView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        if #available(iOS 11.0, *) {
            let view = self
            let background = UIView()
            background.translatesAutoresizingMaskIntoConstraints = false
            background.backgroundColor = .red
            view.addSubview(background)
            
            let foreground = UIView()
            foreground.translatesAutoresizingMaskIntoConstraints = false
            foreground.backgroundColor = .blue
            view.addSubview(foreground)
            
            background.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            background.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            background.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            background.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            
            
            foreground.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
            
            foreground.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
            foreground.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            foreground.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

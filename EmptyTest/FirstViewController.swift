//
//  FirstViewController.swift
//  EmptyTest
//
//  Created by Vasyl Liutikov on 31.01.19.
//  Copyright © 2019 pingwinator. All rights reserved.
//

import UIKit
import IGListKit

class FirstViewController: UICollectionViewController {
    
    fileprivate var adapter: ListAdapter?
    
    init() {
        let layout = UICollectionViewFlowLayout()
        super.init(collectionViewLayout: layout)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupIGList()
    }
    
    func setupIGList() {
        adapter = ListAdapter(updater: ListAdapterUpdater(), viewController: self)
        adapter?.collectionView = collectionView
        adapter?.dataSource = self
    }
}

// MARK: ListAdapterDataSource

extension FirstViewController: ListAdapterDataSource {
    internal func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return []
    }
    
    internal func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        let result: ListSectionController!
        result = nil
        return result
    }
    
    internal func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return EmptyView()
    }
}

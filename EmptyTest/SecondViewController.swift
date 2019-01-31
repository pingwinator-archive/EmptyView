//
//  SecondViewController.swift
//  EmptyTest
//
//  Created by Vasyl Liutikov on 31.01.19.
//  Copyright © 2019 pingwinator. All rights reserved.
//

import UIKit
import IGListKit

class SecondViewController: UIViewController{

    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        adapter.collectionView = collectionView
        adapter.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }
}

extension SecondViewController: ListAdapterDataSource {
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


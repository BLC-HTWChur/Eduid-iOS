//
//  SearchCell.swift
//  eduid-iOS
//
//  Created by Blended Learning Center on 19.02.18.
//  Copyright © 2018 Blended Learning Center. All rights reserved.
//

import UIKit
//Search bar view UI Component for the protocols search
final class SearchCell: UICollectionViewCell, UISearchBarDelegate {
    
    lazy var searchBar : UISearchBar = {
        let view = UISearchBar()
        self.contentView.addSubview(view)
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        searchBar.frame = self.bounds
        //searchBar.
        searchBar.placeholder = NSLocalizedString("Search", comment: "Search placeholder for search bar.")
        searchBar.backgroundColor = UIColor(red: 237/255, green: 237/255, blue: 237/255, alpha: 0.82)
        searchBar.searchBarStyle = .minimal
        searchBar.barStyle = .default
        let gesture = UISwipeGestureRecognizer(target: self, action: #selector(gestureSwipedDown(_:)))
        gesture.direction = .down
        self.superview?.addGestureRecognizer(gesture)
    }
    
    @IBAction func gestureSwipedDown(_ sender: UISwipeGestureRecognizer){
        if self.searchBar.isFirstResponder{
            self.endEditing(true)
        }
    }
}

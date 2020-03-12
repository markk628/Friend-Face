//
//  ViewController.swift
//  FriendFace
//
//  Youtube tutorial by Paul Hudson
//  Created by Mark Kim on 3/8/20.
//  Copyright © 2020 Mark Kim. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, UISearchResultsUpdating {
    let dataSource = FriendDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource.dataChanged = { [weak self] in
            self?.tableView.reloadData()
        }
        
        dataSource.fetch("https://www.hackingwithswift.com/samples/friendface.json")
        tableView.dataSource = dataSource
        
        
        let search = UISearchController(searchResultsController: nil)
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Find a friend"
        search.searchResultsUpdater = self
        navigationItem.searchController = search
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        dataSource.filterText = searchController.searchBar.text
    }

}


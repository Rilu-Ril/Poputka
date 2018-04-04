//
//  FeedViewController.swift
//  Poputka
//
//  Created by Sanira Madzhikova on 4/3/18.
//  Copyright © 2018 Neobis. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!
	//@IBOutlet weak var segmentControl: UISegmentedControl!
	var placements =  [Placement]()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		ServerManager.shared.getPlacements({ (places) in
			self.placements = places
			self.tableView.reloadData()
		}) { (err) in
			//
		}
		
		tableView.tableFooterView = UIView()
		tableView.estimatedRowHeight  = 70
		tableView.rowHeight = UITableViewAutomaticDimension
		
		
    }
}

extension FeedViewController: UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return placements.count
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "FeedCell") as! FeedCell
		let p = placements[indexPath.row]
		cell.set(data: p)
		return cell
	}
}


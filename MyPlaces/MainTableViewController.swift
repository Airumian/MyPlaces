//
//  MainTableViewController.swift
//  MyPlaces
//
//  Created by Alexander Airumyan on 31.07.2021.
//

import UIKit

class MainTableViewController: UITableViewController {

	let restarauntNames = ["Burger Heroes", "Kitchen",
						   "Bonsai", "Дастархан",
						   "Индокитай", "Х.О",
						   "Балкан Гриль", "Sherlock Holmes",
						   "Speak Easy", "Morris Pub",
						   "Вкусные истории","Классик",
						   "Love&Life", "Шок",
						   "Бочка"]
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		restarauntNames.count
	}

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
		cell.textLabel?.text = restarauntNames[indexPath.row]
		cell.imageView?.image = UIImage(named:restarauntNames[indexPath.row])
		return cell
    }
}

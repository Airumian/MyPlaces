//
//  NewPlaceViewController.swift
//  MyPlaces
//
//  Created by Alexander Airumyan on 04.08.2021.
//

import UIKit

class NewPlaceViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
		tableView.tableFooterView = UIView()
    }
	
	//MARK: - Table view delegate
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		if indexPath.row == 0 {
			
		} else {
			view.endEditing(true)
		}
	}
}

// MARK: - Text field delegate

extension NewPlaceViewController: UITextFieldDelegate {
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
}
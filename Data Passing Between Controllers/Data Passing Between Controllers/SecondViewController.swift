//
//  SecondViewController.swift
//  Data Passing Between Controllers
//
//  Created by Muhammed Okumuş on 27.02.2018.
//  Copyright © 2018 Muhammed Okumuş. All rights reserved.
//

import UIKit

protocol CanReceive {
	func dataReceived(data: String)
}


class SecondViewController: UIViewController{
	
	var data = ""
	var delegate: CanReceive?
	
	@IBOutlet weak var label: UILabel!
	
	@IBOutlet weak var textField: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		label.text = data
		
	}
	
	@IBAction func sendDataBack(_ sender: Any) {
		delegate?.dataReceived(data: textField.text!)
		self.dismiss(animated: true, completion: nil)
	}
	

	
}

//
//  ViewController.swift
//  Data Passing Between Controllers
//
//  Created by Muhammed Okumuş on 27.02.2018.
//  Copyright © 2018 Muhammed Okumuş. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceive {

	
	@IBOutlet weak var label: UILabel!
	
	@IBOutlet weak var textField: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func changeToBlue(_ sender: Any) {
		view.backgroundColor = UIColor.red
	}
	
	@IBAction func sendButtonPressed(_ sender: Any) {
		performSegue(withIdentifier: "sendDataForward", sender: self)
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "sendDataForward"{
			let secondVC = segue.destination as! SecondViewController
			
			secondVC.data = textField.text!
			
			secondVC.delegate = self
		}
	}
	
	func dataReceived(data: String) {
		label.text = data
	}
	
}


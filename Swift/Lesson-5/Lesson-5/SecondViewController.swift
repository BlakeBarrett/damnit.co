//
//  SecondViewController.swift
//  Lesson-5
//
//  Created by Blake Barrett on 5/31/17.
//
//

import UIKit

class SecondViewController: UIViewController, MessageReceiver {

    @IBOutlet weak var myLabel: UILabel!
    
    private var message: String?
    func setMessage(message: String) {
        self.message = message
    }
    
    override func viewDidLoad() {
        self.myLabel.text = self.message
    }
    
    @IBAction func onDoneButtonClick(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}

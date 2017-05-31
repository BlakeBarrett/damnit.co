//
//  ThirdViewController.swift
//  Lesson-4
//
//  Created by Blake Barrett on 5/31/17.
//
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBAction func onExitButtonClick(_ sender: Any) {
        self.dismiss(animated: true)
    }
}

extension ThirdViewController: MessageReceiver {
    func setMessage(message: String) {
        print(message)
    }
}

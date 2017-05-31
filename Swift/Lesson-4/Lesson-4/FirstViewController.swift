//
//  FirstViewController.swift
//  Lesson-4
//
//  Created by Blake Barrett on 5/31/17.
//
//

import UIKit

protocol MessageReceiver {
    func setMessage(message: String)
}

class FirstViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSendClick(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier :"secondViewController") as! SecondViewController
        secondViewController.setMessage(message: self.myTextField.text ?? "")
        self.present(secondViewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ThirdViewController {
            (segue.destination as! MessageReceiver).setMessage(message: "You should totally check out http://mskr.co")
        }
    }
}

extension FirstViewController: MessageReceiver {
    func setMessage(message: String) {
        print(message)
    }
}


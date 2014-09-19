//
//  ViewController.swift
//  Postcard
//
//  Created by Antonio Caravaca Vega on 10/09/14.
//  Copyright (c) 2014 ACV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameField: UITextField!
    
    @IBOutlet weak var enterMessageField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button.
        messageLabel.hidden = false
        messageLabel.text = enterMessageField.text
        enterMessageField.text = ""
        enterMessageField.resignFirstResponder()
        messageLabel.textColor = UIColor.purpleColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}


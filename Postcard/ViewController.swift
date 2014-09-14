//
//  ViewController.swift
//  Postcard
//
//  Created by Hobbes-MBA on 9/13/14.
//  Copyright (c) 2014 hobbes co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
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
        // Adding a comment to test commit
        enterMessageTextField.resignFirstResponder();
        
        nameLabel.hidden = false;
        nameLabel.text = enterNameTextField.text;
        nameLabel.textColor = UIColor.blueColor();
        enterNameTextField.text = "";
        
        messageLabel.hidden = false;
        messageLabel.text = enterMessageTextField.text;
        enterMessageTextField.text = "";
        messageLabel.textColor = UIColor.redColor();
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
    }
}


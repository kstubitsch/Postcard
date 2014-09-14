//
//  ViewController.swift
//  postcard
//
//  Created by Kazimir Stubitsch on 2014-09-11.
//  Copyright (c) 2014 KAZIMIR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
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
        // code will evaluate when we press the button
        // test comment
        messageLabel.hidden=false;
        messageLabel.text=enterMessageTextField.text;
        enterMessageTextField.text="";
        enterMessageTextField.resignFirstResponder();
        messageLabel.textColor=UIColor.redColor();
        mailButton.setTitle("Mail Sent",forState:UIControlState.Normal);
        nameLabel.hidden=false;
        nameLabel.text=enterNameTextField.text;
        enterNameTextField.text="";
        nameLabel.textColor=UIColor.blueColor();
    }

}


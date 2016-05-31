//
//  ViewController.swift
//  PasscodeField
//
//  Created by rtomomura on 05/30/2016.
//  Copyright (c) 2016 rtomomura. All rights reserved.
//

import UIKit
import PasscodeField

class ViewController: UIViewController {

    @IBOutlet weak var passcodeField: PasscodeField!
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.passcodeField.textView.becomeFirstResponder()
        self.textField.addTarget(self, action: #selector(ViewController.didChangeText(_:)), forControlEvents: .EditingChanged)
        self.textField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onTapButton(sender: AnyObject) {
//        self.passcodeField.fillSize = 10.0
    }
    
    func didChangeText(textField:UITextField) {
        if let text = textField.text {
            self.passcodeField.progress = text.characters.count
        } else {
            self.passcodeField.progress = 0
        }
    }
}
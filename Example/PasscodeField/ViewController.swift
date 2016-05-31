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
        
        self.textField.addTarget(self, action: #selector(ViewController.didChangeText(_:)), forControlEvents: .EditingChanged)
        self.textField.becomeFirstResponder()
        
        self.view.addSubview(passcodeField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func didChangeText(textField:UITextField) {
        if let text = textField.text {
            self.passcodeField.progress = text.characters.count
        } else {
            self.passcodeField.progress = 0
        }
    }
}
//
//  FUDlogin.swift
//  BC-Food
//
//  Created by Patrick W. Crawford on 11/1/15.
//  Copyright © 2015 Deverse. All rights reserved.
//

import UIKit

class FUDlogin: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.username.backgroundColor = UIColor.clearColor()
        self.username.layer.cornerRadius = 0
        self.username.borderStyle = UITextBorderStyle.None
        self.password.backgroundColor = UIColor.clearColor()
        self.password.layer.cornerRadius = 0
        self.password.borderStyle = UITextBorderStyle.None
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


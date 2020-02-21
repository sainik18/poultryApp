//
//  ViewController.swift
//  PoultryAppNative
//
//  Created by julius 66 on 06/02/20.
//  Copyright © 2020 poultry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var _phoneNumber: UITextField!
    @IBOutlet weak var _password: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginButton.layer.cornerRadius = 20
        
    }

    @IBAction func login(_ sender: Any) {
        let phone = _phoneNumber.text
        let password = _password.text
        
        if(phone == "" || password == ""){
            return
        }
        
        guard let url = URL(string: "https://backoffice.poultrypp.com/backup_api/auth/login") else { return <#default value#> }
        let session = URLSession.shared
        let request = NSMutableURLRequest(url: url)
        request.httpMethod = "POST"
        
        let paramToSend = "phone=" + phone +"&password" + password
    }
    
}


//
//  ViewController.swift
//  SystemLayout
//
//  Created by 이민우 on 2021/02/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUserId: UITextField!
    @IBOutlet weak var txtUserPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnOK(_ sender: UIButton) {
        if txtUserId.text == "aaa" && txtUserPassword.text == "1111"{
            Share.userID = txtUserId.text!
            self.performSegue(withIdentifier: "sgCheck", sender: self)
        }else{
            let userAlert = UIAlertController(title: "경고", message: "ID나 PW가 틀렸습니다.", preferredStyle: UIAlertController.Style.actionSheet)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            userAlert.addAction(onAction)
            present(userAlert, animated: true, completion: nil)
        }
    }
    
}


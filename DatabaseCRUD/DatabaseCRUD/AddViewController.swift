//
//  AddViewController.swift
//  DatabaseCRUD
//
//  Created by 이민우 on 2021/02/16.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var txtId: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtDept: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnInsert(_ sender: UIButton) {
        let sId = txtId.text
        let sName = txtName.text
        let sDept = txtDept.text
        let sPhone = txtPhone.text
        
        let insertModel = InsertModel()
        let result = insertModel.insertItems(code : sId!, name : sName!, dept : sDept!, phone : sPhone!)
        
        if result == true{
            let resultAlert = UIAlertController(title: "완료", message: "입력이 완료되었습니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {ACTION in
                self.navigationController?.popViewController(animated: true)
            })
            resultAlert.addAction(onAction)
            present(resultAlert, animated: true, completion: nil)
        }else{
            let resultAlert = UIAlertController(title: "실패", message: "에러가 발생되었습니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {ACTION in
                self.navigationController?.popViewController(animated: true)
            })
            resultAlert.addAction(onAction)
            present(resultAlert, animated: true, completion: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

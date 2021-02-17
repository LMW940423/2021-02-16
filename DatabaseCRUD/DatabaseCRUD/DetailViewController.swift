//
//  DetailViewController.swift
//  DatabaseCRUD
//
//  Created by 이민우 on 2021/02/16.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var txtId: UITextField!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtDept: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    
    var receiveId = ""
    var receiveName = ""
    var receiveDept = ""
    var receivePhone = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnUpdate(_ sender: UIButton) {
        let sId = txtId.text
        let sName = txtName.text
        let sDept = txtDept.text
        let sPhone = txtPhone.text
        
        let updateModel = UpdateModel()
        let result = updateModel.updateItems(code : sId!, name : sName!, dept : sDept!, phone : sPhone!)
        
        if result == true{
            let resultAlert = UIAlertController(title: "완료", message: "수정이 완료되었습니다.", preferredStyle: UIAlertController.Style.alert)
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
    
    @IBAction func btnDelete(_ sender: UIButton) {
        let sId = txtId.text
  
        let deleteModel = DeleteModel()
        let result = deleteModel.deleteItems(code: sId!)
        
        if result == true{
            let resultAlert = UIAlertController(title: "완료", message: "삭제가 완료되었습니다.", preferredStyle: UIAlertController.Style.alert)
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
    
    func receiveItems(_ sId : String, _ sName : String?, _ sDept : String?, _ sPhone : String?){
        receiveId = sId
        receiveName = sName!
        receiveDept = sDept!
        receivePhone = sPhone!
    }

}

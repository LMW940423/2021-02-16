//
//  UpdateModel.swift
//  DatabaseCRUD
//
//  Created by 이민우 on 2021/02/16.
//

import Foundation

class UpdateModel: NSObject {
    
    var urlPath = "http://127.0.0.1:8080/education/studentUpdate_ios.jsp"
    
    func updateItems(code : String, name : String, dept : String, phone : String) -> Bool{
        var result : Bool = true
        let urlAdd = "?code=\(code)&name=\(name)&dept=\(dept)&phone=\(phone)"
        urlPath = urlPath + urlAdd
        
        // 한글 url encoding
        urlPath = urlPath.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        
        let url : URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil{
                print("Failed to update date")
                result = false
            }else{
                print("Data is updated")
                result = true
            }
        }
        task.resume()
        return result
    }
}

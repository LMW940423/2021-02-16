//
//  Students.swift
//  DatabaseCRUD
//
//  Created by 이민우 on 2021/02/16.
//

import Foundation

class Students : NSObject{
    // Property
    var sId : String?
    var sName : String?
    var sDept : String?
    var sPhone : String?
    
    // Empty
    override init() {
        
    }
    
    // Constructor
    init(sId : String, sName : String, sDept : String, sPhone : String) {
        self.sId = sId
        self.sName = sName
        self.sDept = sDept
        self.sPhone = sPhone
    }
    
}

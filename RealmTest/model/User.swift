//
//  User.swift
//  RealmTest
//
//  Created by Genusys Inc on 4/1/21.
//  Copyright © 2021 Genusys Inc. All rights reserved.
//

import RealmSwift


class User: Object {
    
   @objc dynamic var id = ""
   @objc dynamic var name = ""
   @objc dynamic var password = ""
       
    static func create(withName name: String, withID id:String, withPass password: String ) -> User {
        let user = User()
        user.name = name
        user.id = id
        user.password = password
       
        return user
    }
    
    
    
    
}

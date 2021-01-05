//
//  Store.swift
//  RealmTest
//
//  Created by Genusys Inc on 4/1/21.
//  Copyright © 2021 Genusys Inc. All rights reserved.
//

import UIKit
import RealmSwift


class Store: Object {
    @objc dynamic var name = ""
    var furniture = List<Furniture>()
    
    static func create(withName name: String,
                       furniture: [Furniture]) -> Store {
        let store = Store()
        store.name = name
        store.furniture.append(objectsIn: furniture)
        
        return store
    }
}

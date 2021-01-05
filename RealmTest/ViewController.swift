//
//  ViewController.swift
//  RealmTest
//
//  Created by Genusys Inc on 4/1/21.
//  Copyright © 2021 Genusys Inc. All rights reserved.
//

import UIKit
import RealmSwift


class ViewController: UIViewController {
    
      let realm = try! Realm()

      override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.write()
        self.read()
        
        // Do any additional setup after loading the view.
    }
    
    private func write() {
     let table = Furniture.create(withName: "table")
     let chair = Furniture.create(withName: "chair")
     let store = Store.create(withName: "Test Store",
                            furniture: [table, chair])
        let user =  User.create(withName:"zahid", withID:"12",withPass:"1234")
     
     // Write to Realm
     print("Write to Realm")
     try! realm.write {
         realm.add(table)
         realm.add(chair)
         realm.add(store)
         realm.add(user)

     }
        
    }
    
    private func read() {
        // Read from Realm
        print("Read from Realm")
        let data = realm.objects(Store.self)
        let data1 = realm.objects(User.self)
        print(data)
        print(data1)
    }


}






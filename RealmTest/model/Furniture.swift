//
//  Furniture.swift
//  RealmTest
//
//  Created by Genusys Inc on 4/1/21.
//  Copyright © 2021 Genusys Inc. All rights reserved.
//

import UIKit
import RealmSwift



class Furniture: Object {
    @objc dynamic var name = ""

    static func create(withName name: String) -> Furniture {
        let furniture = Furniture()
        furniture.name = name

        return furniture
    }
}


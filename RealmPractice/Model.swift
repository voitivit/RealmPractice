//
//  Model.swift
//  RealmPractice
//
//  Created by emil kurbanov on 30.01.2022.
//

import Foundation
import RealmSwift
class Info: Object, Decodable {
    @objc dynamic var name: String
    @objc dynamic var surname: String
    @objc dynamic var age: Int
    @objc dynamic var gender: String
}


//
//  ViewController.swift
//  RealmPractice
//
//  Created by emil kurbanov on 30.01.2022.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    let info = Info()
    override func viewDidLoad() {
        super.viewDidLoad()
    getRealmAPI()
    }
    func getRealmAPI() {
        info.name = "Вероника"
        info.surname = "Курбанова"
        info.age = 11
        info.gender = "Female"
        do {
           let realm = try Realm()
            realm.beginWrite()
            realm.add(info)
            try realm.commitWrite()
            print(realm.configuration.fileURL as Any)
            
        } catch  {
            print(error)
        }
    }

}


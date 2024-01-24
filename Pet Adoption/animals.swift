//
//  animals.swift
//  Pet Adoption
//
//  Created by Labe on 2024/1/22.
//

import Foundation

class Cat {
    var gender:String = ""
    var year:Int = 0
    var month:Int = 0
    var breed:String = ""
    var adoptionInfo:String = ""
    var photo:String = ""
    
    init(gender: String, year: Int, month: Int, breed: String, adoptionInfo: String, photo: String) {
        self.gender = gender
        self.year = year
        self.month = month
        self.breed = breed
        self.adoptionInfo = adoptionInfo
        self.photo = photo
    }
}

class Dog {
    var gender:String = ""
    var year:Int = 0
    var month:Int = 0
    var breed:String = ""
    var adoptionInfo:String = ""
    var photo:String = ""
    
    init(gender: String, year: Int, month: Int, breed: String, adoptionInfo: String, photo: String) {
        self.gender = gender
        self.year = year
        self.month = month
        self.breed = breed
        self.adoptionInfo = adoptionInfo
        self.photo = photo
    }
}

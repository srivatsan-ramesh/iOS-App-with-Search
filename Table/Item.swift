//
//  Item.swift
//  Table
//
//  Created by Srivatsan Ramesh on 31/07/15.
//  Copyright (c) 2015 Flat Earth. All rights reserved.
//

import Foundation
class Item{
    var imageURL : String = ""
    var name : String = ""
    init(image:String,name:String){
        self.imageURL = image
        self.name = name
    }
}
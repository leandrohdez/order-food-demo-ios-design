//
//  Food.swift
//  OrderFood
//
//  Created by Leandro Hernandez on 18/2/22.
//

import Foundation

class Food: Identifiable, Equatable {
    
    var id: UUID
    
    var name:  String
    
    var description: String
    
    var price: String
    
    var imageName: String
    
    //
    init(name:  String, description: String, price: String, imageName: String) {
        self.id = UUID()
        self.name = name
        self.description = description
        self.price = price
        self.imageName = imageName
    }
    
    //
    static func == (lhs: Food, rhs: Food) -> Bool {
        return lhs.id == rhs.id
    }
}

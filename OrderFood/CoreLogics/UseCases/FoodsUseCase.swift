//
//  FoodsUseCase.swift
//  OrderFood Example
//
//  Created by Leandro Hernandez on 10/2/22.
//

import Foundation

enum FoodsCaseResult {
    case success(foods: [Food])
    case unknownError
}

class FoodsUseCase: BaseUseCase {
    
    override init() {
        
    }
    
    override func execute() {
        super.execute()
        self.getListOfFoods()
    }
    
}

extension FoodsUseCase {
    
    //
    private func getListOfFoods() {
            
        var result: [Food] = []
        
        result.append(Burger(
            name: "Creamy Burger",
            description: "Spice creamy cheese ð§",
            price: "$9.60",
            imageName: "burger01"
        ))
        
        result.append(Burger(
            name: "Crunchy Burger",
            description: "Crunchy Chicken ð",
            price: "$7.90",
            imageName: "burger02"
        ))
        
        result.append(Burger(
            name: "Beast Burger",
            description: "Bacon Enough ðĨ",
            price: "$9.20",
            imageName: "burger03"
        ))
        
        result.append(Burger(
            name: "Meat Ball",
            description: "Crunchy meat ball ðķ",
            price: "$8.20",
            imageName: "burger04"
        ))
        
        result.append(Burger(
            name: "Arizona Burger",
            description: "Meat & Pickles ðĪŠ",
            price: "$8.50",
            imageName: "burger05"
        ))
        
        result.append(Burger(
            name: "Cheezy Burger",
            description: "Everybody knows ð§",
            price: "$8.00",
            imageName: "burger06"
        ))
        
        result.append(Burger(
            name: "Big Tower ",
            description: "Triple burger ðŠ",
            price: "$9.99",
            imageName: "burger07"
        ))
        
        self.finish(caseResult: FoodsCaseResult.success(foods: result))
        
    }
    
}

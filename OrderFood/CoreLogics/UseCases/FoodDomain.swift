//
//  FoodDomain.swift
//  OrderFood Example
//
//  Created by Leandro Hernandez on 10/2/22.
//

import Foundation

class FoodDomain {
    
    static let UseCases = FoodDomain()
 
    //
    func all(completion: @escaping (_ result: FoodsCaseResult) -> Void) {
        let useCase = FoodsUseCase()
        useCase.endHandle = { (resultCase) in
            if let result = resultCase as? FoodsCaseResult {
                completion(result)
            }
        }
        useCase.execute()
    }
    
}

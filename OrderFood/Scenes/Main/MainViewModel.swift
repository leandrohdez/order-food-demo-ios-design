//
//  MainViewModel.swift
//  OrderFood
//
//  Created by Leandro Hernandez on 18/2/22.
//

import Foundation

class MainViewModel: ObservableObject {
    
    @Published var foods: [Food]

    init() {
        self.foods = []
    }
    
    //
    func loadFoods() {
        
        self.foods = []
        
        FoodDomain.UseCases.all { result in
            
            switch result {
                
            case .success(let foods):
                self.foods = foods
                
            case .unknownError:
                print("Error")
            }
        }
    }
}

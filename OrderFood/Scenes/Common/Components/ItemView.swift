//
//  ItemView.swift
//  OrderFood
//
//  Created by Leandro Hernandez on 18/2/22.
//

import SwiftUI

struct ItemView: View {
    
    var imageName: String
    
    var name: String
    
    var description: String
    
    var price: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Spacer()
            VStack(alignment: .center, spacing: 6) {
                Text(self.name)
                    .font(.system(size: 19).weight(.bold))
                    .foregroundColor(Color.ui.black)
                Text(self.description)
                    .font(.system(size: 14))
                    .foregroundColor(Color.ui.gray02)
                HStack(alignment: .center, spacing: 4) {
                    Text("$")
                        .font(.system(size: 19).weight(.bold))
                        .foregroundColor(Color.ui.red)
                    Text(self.price.replacingOccurrences(of: "$", with: ""))
                        .font(.system(size: 26).weight(.bold))
                        .foregroundColor(Color.ui.black)
                }
            }
            .frame(height: 120, alignment: .center)
        }
        .frame(width: 200, height: 220, alignment: .center)
        .background(Color.ui.white)
        .cornerRadius(40)
        .shadow(color: Color.black.opacity(0.05), radius: 16, x: 0, y: 24)
        .overlay {
            Image(self.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 220)
                .offset(x: 0, y: -80)
        }
        .offset(x: 0, y: 16)
    }
}

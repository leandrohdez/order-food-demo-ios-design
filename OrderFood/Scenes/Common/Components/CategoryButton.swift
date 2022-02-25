//
//  CategoryButton.swift
//  OrderFood
//
//  Created by Leandro Hernandez on 18/2/22.
//

import SwiftUI

struct CategoryButton: View {
    
    var emoji: String
    
    var title: String
    
    var isSelected: Bool = false
    
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center, spacing: 16) {
                Text(self.emoji)
                    .background(
                        ZStack {
                            Color.ui.white
                        }
                        .frame(width: 30, height: 30, alignment: .center)
                            .cornerRadius(15)
                    )
                Text(self.title)
                    .font(.system(size: 15).bold())
            }
        }
        .padding(.leading, 18)
        .padding(.trailing, 24)
        .padding(.vertical, 16)
        .background(self.isSelected ? Color.ui.red : Color.ui.silver)
        .cornerRadius(40)
        .foregroundColor(self.isSelected ? Color.ui.white : Color.ui.gray02)
        
    }
}

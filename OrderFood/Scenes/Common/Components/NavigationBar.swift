//
//  NavigationBar.swift
//  OrderFood
//
//  Created by Leandro Hernandez on 18/2/22.
//

import SwiftUI

struct NavigationBar: View {
    
    var title: String
    
    var body: some View {
        ZStack {
            Color.clear
                .background(.white)
//                .blur(radius: 2)
            HStack(alignment: .center) {
                MenuButton()
                    .padding(.leading, 8)
                Spacer()
                HStack(alignment: .center, spacing: 8) {
                    Image(systemName: "pin.circle.fill")
                        .resizable(resizingMode: .stretch)
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                        .foregroundColor(Color.ui.red)
                    Text(self.title)
                        .font(.headline.weight(.bold))
                    Image(systemName: "chevron.down.circle")
                        .resizable(resizingMode: .stretch)
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                        .foregroundColor(Color.ui.gold)
                        
                }
                Spacer()
                ProfileButton()
                    .padding(.trailing, 8)
            }
        }
        .frame(height: 70)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(title: "City, COUNTRY")
    }
}

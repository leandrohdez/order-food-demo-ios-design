//
//  HighlightedView.swift
//  OrderFood
//
//  Created by Leandro Hernandez on 18/2/22.
//

import SwiftUI

struct HighlightedView: View {
    var body: some View {
      
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .top, spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(Text("The Fastest In\nDelivery").foregroundColor(Color.ui.black)) \(Text("Food").foregroundColor(Color.ui.red))")
                        .font(.system(size: 22).weight(.bold))
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                    Spacer()
                    NavigationLink(destination: MainView()) {
                        Text("Order Now")
                            .font(.system(size: 14))
                    }
                    .buttonStyle(SmallButtonStyle())
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(24)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(height: 160)
        .padding(.horizontal, 0)
        .frame(maxWidth: .infinity)
        .background(
            ZStack {
                Color.ui.cream01
                Image.ui.welcomeBackgroundFood
                    .resizable()
                    .scaledToFill()
                    .frame(height: 160)
            }
        )
        .cornerRadius(32)
        .overlay {
            HStack {
                Image.ui.deliveryIllustration
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180)
                    .padding(.trailing, 6)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .frame(height: 160, alignment: .bottom)
        }
    }
    
}

struct HighlightedView_Previews: PreviewProvider {
    static var previews: some View {
        HighlightedView()
    }
}


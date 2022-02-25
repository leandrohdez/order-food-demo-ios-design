//
//  MenuButton.swift
//  OrderFood
//
//  Created by Leandro Hernandez on 18/2/22.
//

import SwiftUI

struct MenuButton: View {
    var body: some View {
        ZStack {
            Button(action: {
                
            }, label: {
                Text("")
                    .frame(width: 44, height: 44, alignment: .center)
                    .background(Color.ui.silver)
                    .cornerRadius(12)
            })
            .frame(width: 44, height: 44, alignment: .center)
            .padding(.horizontal, 8)
            .overlay {
                VStack(alignment: .center, spacing: 4) {
                    HStack(alignment: .center, spacing: 4) {
                        Circle()
                            .fill(Color.ui.black)
                            .frame(width: 6, height: 6)
                        Circle()
                            .fill(Color.ui.black)
                            .frame(width: 6, height: 6)
                    }
                    HStack(alignment: .center, spacing: 4) {
                        Circle()
                            .fill(Color.ui.black)
                            .frame(width: 6, height: 6)
                        Circle()
                            .fill(Color.ui.red)
                            .frame(width: 6, height: 6)
                    }
                }
            }
        }
    }
}

struct ButtonMenu_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton()
    }
}

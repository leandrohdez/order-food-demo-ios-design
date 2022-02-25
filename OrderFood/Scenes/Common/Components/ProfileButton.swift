//
//  ProfileButton.swift
//  OrderFood
//
//  Created by Leandro Hernandez on 18/2/22.
//

import SwiftUI

struct ProfileButton: View {
    var body: some View {
        ZStack {
            Button(action: {
                
            }, label: {
                Text("🧔🏻")
                    .frame(width: 44, height: 44, alignment: .center)
                    .background(Color.ui.silver)
                    .cornerRadius(12)
            })
            .frame(width: 44, height: 44, alignment: .center)
            .padding(.horizontal, 8)
        }
    }
}

struct ButtonProfile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileButton()
    }
}

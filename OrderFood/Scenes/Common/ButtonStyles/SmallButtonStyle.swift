//
//  SmallButtonStyle.swift
//  OrderFood
//
//  Created by Leandro Hernandez on 18/2/22.
//

import SwiftUI

struct SmallButtonStyle: ButtonStyle {
    
    @Environment(\.isEnabled) private var isEnabled
    
    var foregroundColor: Color = Color.ui.white
    
    var backgroundColor: Color = Color.ui.red

    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(self.foregroundColor(configuration: configuration))
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(self.backgroundColor(configuration: configuration))
            .cornerRadius(40)
    }
    
    private func foregroundColor(configuration: Configuration) -> Color {
        if self.isEnabled {
            return configuration.isPressed ? self.foregroundColor.opacity(0.8) : self.foregroundColor
        } else {
            return self.foregroundColor.opacity(0.8)
        }
    }
    
    private func backgroundColor(configuration: Configuration) -> Color {
        if self.isEnabled {
            return configuration.isPressed ? self.backgroundColor.opacity(0.8) : self.backgroundColor
        } else {
            return self.backgroundColor.opacity(0.5)
        }
    }
}

//
//  File.swift
//  
//
//  Created by Kritbovorn Taweeyossak on 25/1/2565 BE.
//

import SwiftUI

@available(iOS 13.0, *)
public struct DefaultButtonViewModifier: ViewModifier {
    
    let font: Font
    let foregroundColor: Color
    let backgroundColor: Color
    let cornerRadius: CGFloat
    let shadowRadius: CGFloat
    
    public func body(content: Content) -> some View {
        content
            .font(font)
            .foregroundColor(foregroundColor)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
            .shadow(color: Color(.systemGray2), radius: 6, x: 0, y: 0)
    }
}

@available(iOS 13.0, *)
public extension View {
    
    func defaultButtonView(font: Font = Font.headline, foregroundColor: Color = Color(.systemGray5), backgroundColor: Color = Color(.systemBlue), cornerRadius: CGFloat = 12.0, shadowRadius: CGFloat = 8.0) -> some View {
        modifier(DefaultButtonViewModifier(font: font, foregroundColor: foregroundColor, backgroundColor: backgroundColor, cornerRadius: cornerRadius, shadowRadius: shadowRadius))
    }
}

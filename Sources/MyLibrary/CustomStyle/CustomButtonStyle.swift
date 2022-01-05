//
//  CustomButtonStyle.swift
//  Alert
//
//  Created by Kritbovorn Taweeyossak on 4/1/2565 BE.
//

import SwiftUI

@available(iOS 13.0, *)
public struct CustomButtonStyle: ButtonStyle {
    
    public let sfImageName: String
    
    public init(imageName: String) {
        self.sfImageName = imageName
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        withAnimation {
            HStack {
                Image(systemName: sfImageName)
                    .padding(.horizontal, 4)
                
                configuration.label
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(7)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 12).fill(Color.blue))
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
        }
    }
}

@available(iOS 13.0, *)
public extension ButtonStyle where Self == CustomButtonStyle {
    static var customButtonStyle: CustomButtonStyle {
        CustomButtonStyle(imageName: "gear")
    }
}

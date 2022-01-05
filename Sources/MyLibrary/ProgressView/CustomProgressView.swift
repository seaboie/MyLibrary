//
//  CustomProgressView.swift
//  Alert
//
//  Created by Kritbovorn Taweeyossak on 4/1/2565 BE.
//

import SwiftUI

@available(iOS 14.0, *)
public struct CustomProgressView: View {
    
    public let message: String
    
    public init(message: String) {
        self.message = message
    }
    
    public var body: some View {
        
        ZStack {
            
            Color(.systemBackground).opacity(0.4)
                .ignoresSafeArea()
            
            ProgressView(message)
                .padding(24)
                .background(RoundedRectangle(cornerRadius: 12).fill(Color(.secondarySystemBackground)))
        }
        .shadow(radius: 10)
    }
}

@available(iOS 14.0, *)
public struct CustomProgressView_Previews: PreviewProvider {
    public static var previews: some View {
        CustomProgressView(message: "")
            
    }
}

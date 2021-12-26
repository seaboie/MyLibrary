//
//  SwiftUIView.swift
//  
//
//  Created by Kritbovorn Taweeyossak on 26/12/2564 BE.
//

import SwiftUI

@available(iOS 13.0.0, *)
public struct SwiftUIView: View {
    
    public init() {}
   
    public var body: some View {
        
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Ok")
        }
    }
}

@available(iOS 13.0.0, *)
public struct SwiftUIView_Previews: PreviewProvider {
    public static var previews: some View {
        SwiftUIView()
    }
}

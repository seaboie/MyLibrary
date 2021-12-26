//
//  CustomTabBarFirst.swift
//  BasicSwiftUI
//
//  Created by Kritbovorn Taweeyossak on 26/12/2564 BE.
//

import SwiftUI


@available(iOS 13.0, *)
public struct CustomTabBarFirst: View {
    
    
    
    @Binding var index: Int
    
    public init(index: Binding<Int>) {
        self._index = index
    }
    
    public var body: some View {
        
        HStack {
            
            Button {
                //
                self.index = 0
            } label: {
                Image(systemName: "gear")
            }
            .foregroundColor(Color.black.opacity(index == 0 ? 1 : 0.3))
            
            Spacer()
            
            Button {
                //
                self.index = 1
            } label: {
                Image(systemName: "scribble.variable")
            }
            .foregroundColor(Color.black.opacity(index == 1 ? 1 : 0.3))
            
            Spacer()
            
            Button {
                //
                self.index = 2
            } label: {
                Image(systemName: "square.and.arrow.up.fill")
            }
            .foregroundColor(Color.black.opacity(index == 2 ? 1 : 0.3))
            
            Spacer()
            
            Button {
                //
                self.index = 3
            } label: {
                Image(systemName: "trash.fill")
            }
            .foregroundColor(Color.black.opacity(index == 3 ? 1 : 0.3))

        }
        .padding()
        .background(Color.white)
    }
}

@available(iOS 13.0, *)
public struct CustomTabBarFirst_Previews: PreviewProvider {
    public static var previews: some View {
        CustomTabBarFirst(index: .constant(0))
    }
}


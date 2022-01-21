//
//  File.swift
//  
//
//  Created by Kritbovorn Taweeyossak on 21/1/2565 BE.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
public class HapticManager {
    
    public static let instance = HapticManager()
    
    public func selectionFeedBackGenerator() {
        let selectionGenerator = UISelectionFeedbackGenerator()
        selectionGenerator.prepare()
        selectionGenerator.selectionChanged()
    }
    
    public func notificationFeedBackGenerator(type: UINotificationFeedbackGenerator.FeedbackType) {
        let notificationGenerator = UINotificationFeedbackGenerator()
        notificationGenerator.prepare()
        notificationGenerator.notificationOccurred(type)
    }
    
    public func impactFeedBackGenerator(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let impactGenerator = UIImpactFeedbackGenerator(style: style)
        impactGenerator.prepare()
        impactGenerator.impactOccurred()
    }
}

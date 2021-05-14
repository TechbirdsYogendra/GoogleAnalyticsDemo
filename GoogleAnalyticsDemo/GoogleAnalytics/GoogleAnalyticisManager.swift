//
//  GoogleAnalyticisManager.swift
//  GoogleAnalyticsDemo
//
//  Created by Yogendra Singh on 14/05/21.
//

import Foundation
import FirebaseAnalytics

class GoogleAnalyticisManager {
    
    static func log(_ event: AnalyticsEventProtocol) {
        print("Event Name: \(event.name)")
        print("Event Parameters: \(event.parameters)")
        Analytics.logEvent(event.name, parameters: event.parameters)
    }
}

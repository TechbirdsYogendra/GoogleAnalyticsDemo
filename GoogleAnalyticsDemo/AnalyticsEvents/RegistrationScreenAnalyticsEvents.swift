//
//  RegistrationScreenAnalyticsEvents.swift
//  GoogleAnalyticsDemo
//
//  Created by Yogendra Singh on 14/05/21.
//

import Foundation

enum RegistrationEventActionName {
    case login
    case register
    case terms
    case none
}

enum RegistrationEventStateName {
    case screenAppeared
    case screenDisappeared
    case none
}

struct RegistrationScreenAnalyticsEvents: AnalyticsEventProtocol {
    var eventType: EventType
    var eventActionName: RegistrationEventActionName
    var eventStateName: RegistrationEventStateName
    
    init(eventType: EventType, eventActionName: RegistrationEventActionName = .none, eventStateName: RegistrationEventStateName = .none) {
        self.eventType = eventType
        self.eventActionName = eventActionName
        self.eventStateName = eventStateName
    }
    
    var name: String {
        get {
           return getName()
        }
        set {}
    }
    
    var parameters: [String : String] {
        get {
            return getParameters()
        }
        set {}
    }
    
    func getName() -> String {
        return "registration_screen_event"
    }
    
    func getParameters() -> [String: String] {
        switch self.eventType {
        case .action:
            return getParametersForAction()
        case .state:
            return getParametersForState()
        }
    }
    
    func getParametersForAction() -> [String: String] {
        switch self.eventActionName {
        case .login:
            return ["action": "login_button"]
        case .register:
            return ["action": "signup_button"]
        case .terms:
            return ["action": "terms_and_conditions button"]
        case .none:
            return [:]
        }
    }
    
    func getParametersForState() -> [String: String] {
        switch eventStateName {
        case .screenAppeared:
            return ["state": "Registration screen appeared"]
        case .screenDisappeared:
            return ["state": "Registration screen disappeared"]
        case .none:
            return [:]
        }
        
    }
    
}

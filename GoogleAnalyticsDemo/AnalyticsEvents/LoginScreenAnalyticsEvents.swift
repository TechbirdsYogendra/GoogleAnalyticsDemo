//
//  LoginScreenAnalyticsEvents.swift
//  GoogleAnalyticsDemo
//
//  Created by Yogendra Singh on 14/05/21.
//

import Foundation

enum EventType {
    case action
    case state
}

enum EventActionName {
    case login
    case register
    case terms
    case none
}

enum EventStateName {
    case screenAppeared
    case screenDisappeared
    case none
}

struct LoginScreenAnalyticsEvents: AnalyticsEventProtocol {
    var eventType: EventType
    var eventActionName: EventActionName
    var eventStateName: EventStateName
    
    init(eventType: EventType, eventActionName: EventActionName = .none, eventStateName: EventStateName = .none) {
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
        return "login_screen_event"
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
            return ["action": "login button"]
        case .register:
            return ["action": "register button"]
        case .terms:
            return ["action": "terms and conditions button"]
        case .none:
            return [:]
        }
    }
    
    func getParametersForState() -> [String: String] {
        switch eventStateName {
        case .screenAppeared:
            return ["state": "Login screen appeared"]
        case .screenDisappeared:
            return ["state": "Login screen disappeared"]
        case .none:
            return [:]
        }
        
    }
    
}

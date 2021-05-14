//
//  RegistrationViewController.swift
//  GoogleAnalyticsDemo
//
//  Created by Yogendra Singh on 14/05/21.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Registration Controller"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        GoogleAnalyticisManager.log(RegistrationScreenAnalyticsEvents(eventType: .state, eventStateName: .screenAppeared))
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        GoogleAnalyticisManager.log(RegistrationScreenAnalyticsEvents(eventType: .state, eventStateName: .screenDisappeared))
    }
    
    @IBAction func signupButtonTapped(_ sender: UIButton) {
        GoogleAnalyticisManager.log(RegistrationScreenAnalyticsEvents(eventType: .action, eventActionName: .register))
        
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        GoogleAnalyticisManager.log(RegistrationScreenAnalyticsEvents(eventType: .action, eventActionName: .login))
    }
    
    @IBAction func termsAndConditionsButtonTapped(_ sender: UIButton) {
        GoogleAnalyticisManager.log(RegistrationScreenAnalyticsEvents(eventType: .action, eventActionName: .terms))
        
    }
}

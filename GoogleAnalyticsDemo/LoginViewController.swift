//
//  LoginViewController.swift
//  GoogleAnalyticsDemo
//
//  Created by Yogendra Singh on 14/05/21.
//

import UIKit
import FirebaseAnalytics

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Login Controller"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        GoogleAnalyticisManager.log(LoginScreenAnalyticsEvents(eventType: .state, eventStateName: .screenAppeared))
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        GoogleAnalyticisManager.log(LoginScreenAnalyticsEvents(eventType: .state, eventStateName: .screenDisappeared))
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        GoogleAnalyticisManager.log(LoginScreenAnalyticsEvents(eventType: .action, eventActionName: .login))
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        GoogleAnalyticisManager.log(LoginScreenAnalyticsEvents(eventType: .action, eventActionName: .register))

    }
    
    @IBAction func termsAndConditionsButtonTapped(_ sender: UIButton) {
        GoogleAnalyticisManager.log(LoginScreenAnalyticsEvents(eventType: .action, eventActionName: .terms))

    }
    

}


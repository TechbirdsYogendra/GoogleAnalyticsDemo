//
//  AnalyticsEventProtocol.swift
//  GoogleAnalyticsDemo
//
//  Created by Yogendra Singh on 14/05/21.
//

import Foundation

protocol AnalyticsEventProtocol {
    var name: String { get set }
    var parameters: [String: String] { get set }
}

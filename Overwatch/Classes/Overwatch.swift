//
//  Stopwatch.swift
//  Zubizu
//
//  Created by Ilter Cengiz on 13/10/2016.
//  Copyright © 2016 D-Teknoloji. All rights reserved.
//

import UIKit

class Overwatch: NSObject {
    
    private static let sharedInstance = Overwatch()
    private var storage: [String: Date] = [:]
    
    // MARK: Public functions
    
    static func start(with identifier: String) {
        sharedInstance.startTimer(with: identifier)
    }
    
    static func stop(with identifier: String) {
        print("[ Stopwatch ]: \(identifier) duration: \(sharedInstance.stopTimer(with: identifier))")
    }
    
    // MARK: Private functions
    
    func startTimer(with identifier: String) {
        storage[identifier] = Date()
    }
    
    func stopTimer(with identifier: String) -> TimeInterval {
        let timeInterval: TimeInterval
        if let startDate = storage[identifier] {
            timeInterval = startDate.timeIntervalSinceNow * (-1)
        } else {
            timeInterval = 0
        }
        return timeInterval
    }
    
}

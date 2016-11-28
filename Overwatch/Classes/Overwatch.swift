//
//  Stopwatch.swift
//  Zubizu
//
//  Created by Ilter Cengiz on 13/10/2016.
//  Copyright © 2016 D-Teknoloji. All rights reserved.
//

import Foundation

public class Overwatch: NSObject {
    
    private static let sharedInstance = Overwatch()
    private var storage: [String: Date] = [:]
    
    // MARK: Public functions
    
    public static func start(withName name: String) {
        sharedInstance.startTimer(with: name)
    }
    
    @discardableResult public static func stop(withName name: String) -> TimeInterval {
        let duration = sharedInstance.stopTimer(with: name)
        print("[ Overwatch ]: \(name) duration: \(duration)")
        return duration
    }
    
    // MARK: Private functions
    
    func startTimer(with name: String) {
        storage[name] = Date()
    }
    
    func stopTimer(with name: String) -> TimeInterval {
        let timeInterval: TimeInterval
        if let startDate = storage[name] {
            timeInterval = startDate.timeIntervalSinceNow * (-1)
        } else {
            timeInterval = 0
        }
        return timeInterval
    }
    
}

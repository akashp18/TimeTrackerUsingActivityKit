//
//  TimerAttribute.swift
//  ActivityLiveDemo
//
//  Created by Akash on 2023-06-21.
//

import ActivityKit
import SwiftUI

struct timerAttribute:ActivityAttributes{
    
    public typealias TimerStatus = ContentState
    
    public struct ContentState:Codable,Hashable{
        var endTime:Date
    }
    
    var timerName:String
}

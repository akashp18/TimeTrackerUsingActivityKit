//
//  widgetDemo.swift
//  widgetDemo
//
//  Created by Akash on 2023-06-21.
//

import WidgetKit
import SwiftUI
import ActivityKit

struct timerActivity : View {
    let context:ActivityViewContext<timerAttribute>
    var body: some View {
        
        VStack{
            Text(context.attributes.timerName)
                .font(.headline)
            
            Text(context.state.endTime,style: .timer)
        }
        .padding(.horizontal)
    }
}

struct timerDynamicIsland:DynamicIsland{
    var
}

struct widgetDemo: Widget {
    let kind: String = "widgetDemo"

    var body: some WidgetConfiguration {
        ActivityConfiguration(for: ActivityAttributes.self) { context in
            timerActivity(context: context)
        } dynamicIsland: { context in
            
        }

    }
}

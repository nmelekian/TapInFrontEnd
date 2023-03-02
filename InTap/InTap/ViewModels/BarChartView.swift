//
//  BarChartView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/22/23.
//

import SwiftUI
import Charts

struct StepCount: Identifiable {
    let id = UUID()
    let weekday: Date
    let steps: Int
    
    init(day: String, steps: Int) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        
        self.weekday = formatter.date(from: day) ?? Date.distantPast
        self.steps = steps
    }
    
    var weekdayString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "en_US")
        return  dateFormatter.string(from: weekday)
    }
}


struct BarChartView: View {
    let currentWeek: [StepCount] = [
        
        StepCount(day: "20220718", steps: 50),
        StepCount(day: "20220719", steps: 85),
        StepCount(day: "20220720", steps: 10),
        StepCount(day: "20220721", steps: 30),
        StepCount(day: "20220722", steps: 48)
        
    ]
    
    
    var body: some View {
        VStack {
            GroupBox ( "Tap In Results" ) {
                Chart(currentWeek) {
                    BarMark(
                        x: .value("Week Day", $0.weekday, unit: .day),
                        y: .value("Step Count", $0.steps)
                    )
                    .cornerRadius(20)
                }
                .chartYAxis {
                    AxisMarks(position: .leading)
                }
                .chartXAxis {
                    AxisMarks (values: .stride (by: .day)) { value in
                        AxisGridLine().foregroundStyle(.orange)
                        AxisValueLabel(format: .dateTime.weekday(),
                                       centered: true)
                    }
                }
                .frame(height: 100)
//                Spacer()
            }
            .padding()
        }
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}

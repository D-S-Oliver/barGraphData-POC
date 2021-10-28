//
//  File.swift
//  barGraphData
//
//  Created by Bruno Neves Oliveira on 28/10/21.
//

////  BarGraphView.swift//  bar-graph-azamsharp-weekly////  Created by Mohammad Azam on 1/25/20.//  Copyright © 2020 Mohammad Azam. All rights reserved.//import SwiftUI
///

import Foundation
import SwiftUI

struct BarGraphView: View{
    let reports: [Report]
    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {
                ForEach(self.reports, id: \.year) {report in
                    BarView(report: report)}
            }
            
        }
    }
struct BarView: View {
    let report: Report
    var body: some View {
        let value = report.revenue / 500
        let yValue = Swift.min(value * 20, 500)
        return VStack {
            Text(String(format: "$%.2f",report.revenue))
            Rectangle()
                .fill(report.revenue > 5000 ? Color.green : Color.red)
                .frame(width: 100, height: CGFloat(yValue))
            
            Text(report.year)
            
        }
        
    }
    
}
struct BarGraphView_Previews: PreviewProvider{
    static var previews: some View {
        BarGraphView(reports: Report.all())
    }
}
}

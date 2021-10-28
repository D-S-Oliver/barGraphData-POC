//
//  Report.swift
//  barGraphData
//
//  Created by Bruno Neves Oliveira on 28/10/21.
//

import Foundation

struct Report {
    let year: String
    let revenue: Double
}

extension Report{
    static func all() -> [Report] {
        return[
            Report(year: "2001", revenue: 1500),
            Report(year: "2002", revenue: 3500),
            Report(year: "2003", revenue: 8500)
        ]
            
        
    }
}

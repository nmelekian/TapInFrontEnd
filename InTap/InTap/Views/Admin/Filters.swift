//
//  Filters.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/24/23.
//

import Foundation


enum Grade: String, CaseIterable {
    case all
    case ninth
    case tenth
    case eleventh
    case twelfth
    
    
    var gradeFilter: String {
        switch self {
        case .all:
            return "All"
        case .ninth:
            return "9th"
        case .tenth:
            return "10th"
        case .eleventh:
            return "11th"
        case .twelfth:
            return "12th"
        
        }
    }
}

enum Period: String, CaseIterable {
    case all
    case homeroom
    case first
    case second
    case third
    case fourth
    
    
    var periodFilter: String {
        switch self {
        case .all:
            return "All Classes"
        case .homeroom:
            return "Homeroom"
        case .first:
            return "1st Period"
        case .second:
            return "2nd Period"
        case .third:
            return "3rd Period"
        case .fourth:
            return "4th Period"
        
        }
    }
}

enum StudentStatus: String, CaseIterable {
    case all
    case good
    case warning
    case needsAttention
    
    var statusFilter: String {
        switch self {
        case .all:
            return "All"
        case .good:
            return "Good"
        case .warning:
            return "Warning"
        case .needsAttention:
            return "Needs Attention"
            
        }
    }
    
}


enum Time: String, CaseIterable {
    case week
    case month
    case semester
    case year
    
    
    var timeFilter: String {
        switch self {
        case .week:
            return "Week"
        case .month:
            return "Month"
        case .semester:
            return "Semester"
        case .year:
            return "Year"
        
        }
    }
}



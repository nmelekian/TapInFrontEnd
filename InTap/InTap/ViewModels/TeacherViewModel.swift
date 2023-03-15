//
//  TeacherViewModel.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/21/23.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @EnvironmentObject var viewModel: ViewModel
    
    @Published var path = NavigationPath()
    
    
    @Published var teacher = Teacher(schoolName: "", schoolCode: "", firstName: "", lastName: "", preferredName: "", email: "", username: "", password: "")
    @Published var admin = Admin(schoolName: "", schoolCode: "", firstName: "", lastName: "", title: "", email: "", securityQuestion: "", securityQuestionAnswer: "", password: "")
    
    
    
    
    @Published var gradeFilter: Grade = .all
    @Published var timeFilter: Time = .week
    @Published var periods: Period = .homeroom
    @Published var statusFilter: StudentStatus = .all
    
    
    
    
    
    @Published var createdTeachers: [Teacher] = [Teacher(schoolName: "Westview High School", schoolCode: "1234", firstName: "John", lastName: "Green", preferredName: "John", email: "jgreen@westview.edu", username: "jgreen", password: "doggs1234"), Teacher(schoolName: "Westview High School", schoolCode: "1234", firstName: "Angelina", lastName: "Davidson", preferredName: "Angie", email: "adavidson@westview.edu", username: "adavidson", password: "abcd1234"), Teacher(schoolName: "Westview High School", schoolCode: "1234", firstName: "Nicholas", lastName: "Melekian", preferredName: "Nick", email: "nmelekian@westview.edu", username: "nmelekian", password: "asdf314523"), Teacher(schoolName: "Westview High School", schoolCode: "1234", firstName: "Richard", lastName: "Johnson", preferredName: "Dick", email: "rjohnson@westview.edu", username: "rjohnson", password: "password"), Teacher(schoolName: "Westview High School", schoolCode: "1234", firstName: "Shannon", lastName: "Louis", preferredName: "Shannon", email: "slouis@westview.edu", username: "slouis", password: "piggywiggy4785")]
    @Published var createdAdmins: [Admin] = []
   
    
    func returnHome(){
        self.path.removeLast(self.path.count)
    }
    
    
    
    
    @Published var schoolCodes = ["1234", "2345", "3454", "1254", "1239"]
    
    // Options for the main navigation links
//    enum Route {
//        case category
//        case eventDetails
//        case personalDetails
//        case submit
//        case confirmation
//        @ViewBuilder
//        var view: some View {
//            switch self {
//            case .category:
//
//            case .eventDetails:
//
//            case .personalDetails:
//
//            case .submit:
//
//            case .confirmation:
//
//            }
//        }
//    }
}

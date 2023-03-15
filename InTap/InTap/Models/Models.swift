//
//  TeacherModel.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/21/23.
//

import Foundation
import SwiftUI

struct Admin: Identifiable, Hashable {
    var id = UUID()
    var schoolName: String = ""
    var schoolCode: String = ""
    var firstName: String = ""
    var lastName: String = ""
    var title: String = ""
    var email: String = ""
    var securityQuestion: String = ""
    var securityQuestionAnswer: String = ""
    var password: String = ""
    
}

struct Teacher: Identifiable, Hashable {
    var id = UUID()
    var schoolName: String = ""
    var schoolCode: String = ""
    var firstName: String = ""
    var lastName: String = ""
    var preferredName: String = ""
    var email: String = ""
    var username: String = ""
    var password: String = ""
    
}


struct Student: Identifiable, Hashable {
    var id = UUID()
    var studentName: String
    var status: String
    var grade: Grade
    
    
}







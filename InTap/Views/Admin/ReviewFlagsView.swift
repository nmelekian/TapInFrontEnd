//
//  ReviewFlagsView.swift
//  InTap
//
//  Created by Nicholas Melekian on 4/17/23.
//

import SwiftUI

struct ReviewFlagsView: View {
    var body: some View {
        List{
            StudentReviewCard(studentName: "Mark Jacobs", date: Date(), habits: "Eating Habits", info: "Did not eat 3/5 days")
            StudentReviewCard(studentName: "Dana Johnson", date: Date(), habits: "Attendance Habits", info: "Did not check in 2/5 days")
            StudentReviewCard(studentName: "Jack Robinson", date: Date(), habits: "Sleeping Habits", info: "Did not sleep well for 4 days")
            
        }
    }
}

struct ReviewFlagsView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewFlagsView()
    }
}

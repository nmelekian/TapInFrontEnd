//
//  StudentReviewCard.swift
//  InTap
//
//  Created by Nicholas Melekian on 4/3/23.
//

import SwiftUI

struct StudentReviewCard: View {
    @State var studentName: String
    @State var date: Date
    @State var habits: String
    @State var isReviewed: Bool = false
    @State var info: String
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack{
                    Text(studentName)
                        .foregroundColor(Color("ButtonColor1"))
                    Spacer()
                    VStack(alignment: .leading){
                        Text("\(date.formatted(date: .abbreviated, time: .omitted))")
                        Text("\(date.formatted(date: .omitted, time: .shortened))")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }.padding(.top)
                }
                Text(habits)
                Text(info)
                    .foregroundColor(.secondary)
                    .font(.caption)
            }
            
            
            if isReviewed == false {
                Button {
                    isReviewed.toggle()
                } label: {
                    Text("Mark Reviewed")
                        .foregroundColor(.white)
                        .bold()
                        
                }.buttonStyle(SmallerTapInButton())
                    .padding()
                
            } else {
                VStack(alignment: .leading){
                    HStack {
                        Image(systemName: "checkmark.square.fill")
                            .foregroundColor(.blue)
                        Text("Marked reviewed by all staff")
                            .foregroundColor(.secondary)
                            .font(.caption)
                    }
                }.padding()
            }

        }
    }
}

struct StudentReviewCard_Previews: PreviewProvider {
    static var previews: some View {
        StudentReviewCard(studentName: "Mike Harris", date: Date(), habits: "Eating Habits", info: "Did not eat breakfast for 3/5 days")
    }
}

//
//  AboutTapInView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/21/23.
//

import SwiftUI

struct AboutTapInView: View {
    @Environment(\.dismiss) var dismiss
    @State var count = 0
    
    var bodyText = ["The mobile app that helps teachers stay informed about their students' wellbeing. \n\n With Tap In, teachers can get a daily pulse on how their students are doing by having them complete a short survey each day.", "The Tap In survey includes questions about students' mood, eating and sleeping habits. \n \n With this valuable information, teachers can make informed decisions about their classroom activities and teaching approach. They can also identify students who may need extra support and address any issues in a timely manner.", "See patterns in student responses and make data-driven decisions to enhance the learning experience for all students.\n\n Join the many teachers who have already made Tap In a part of their daily routine and see the positive impact it can have on your students. \n Join Tap In today!"]
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("ButtonColor2"), Color("ButtonColor1")]), startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            VStack(alignment: .center){
                HStack{
                    Text("About Tap In")
                        .font(.title)
                        .padding()
                    
                    Button(action: {
                                       dismiss()
                                   }, label: { Image(systemName: "x.circle.fill") })
                }
                
                Text(bodyText[count])
                    .multilineTextAlignment(.center)
                    .padding([.top, .bottom])
                
                if count >= 2 {
                    Button("Sign Up") {
                        
                    }.buttonStyle(InverseTapInButton())
                } else {
                    Button("Next") {
                        count += 1
                    }
                    .buttonStyle(InverseTapInButton())
                }
                
                
                
            }
            
        }
    }
}

struct AboutTapInView_Previews: PreviewProvider {
    static var previews: some View {
        AboutTapInView()
    }
}

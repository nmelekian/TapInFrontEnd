//
//  StudentTapInCompletionCardView.swift
//  InTap
//
//  Created by Nicholas Melekian on 3/14/23.
//

import SwiftUI

struct StudentTapInCompletionCardView: View {
    @EnvironmentObject var viewModel: ViewModel
//    @Binding var isShowing = false
    @State var completion = "Tap In Completion"
    @State var rating = 8
    
    var body: some View {
            HStack(spacing: 0.0) {
                VStack {
                    HStack {
                        Spacer()
                        Button {
//                            isShowing.toggle()
                        } label: {
                            Image(systemName: "info.circle.fill")
                                .foregroundColor(.white)
                        }
                        
                    }
                    
                    Text("\(rating)%")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding([.bottom,.leading,.trailing])
                    
                }
                .padding()
                .background {
                    Rectangle()
                        .fill (
                            DashCardColor
                        )
                }
                
                HStack {
                    Spacer()
                    VStack{
                        Text("\(completion)")
                            .multilineTextAlignment(.center)
                            .font(.headline)
                        Text("Student completes Tap Ins \(rating)% of days")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        
                    }
                    Spacer()
                }
                    .padding()
                    .background {
                        Rectangle()
                            .foregroundColor(.white)
                    }
                
            }
            .cornerRadius(20.0)
        }
    
    
    var DashCardColor: LinearGradient {
        switch rating {
        case 85...100:
           return LinearGradient(gradient: Gradient(colors: [Color("ButtonColor2"), Color("ButtonColor1")]), startPoint: .top, endPoint: .bottom)
        case 65...84:
            return LinearGradient(gradient: Gradient(colors: [Color("CautionColor1"), Color("CautionColor2")]), startPoint: .top, endPoint: .bottom)
        case 0...65:
            return LinearGradient(gradient: Gradient(colors: [Color("WarningColor1"), Color("WarningColor2")]), startPoint: .top, endPoint: .bottom)
        default:
            return LinearGradient(gradient: Gradient(colors: [Color("ButtonColor2"), Color("ButtonColor1")]), startPoint: .top, endPoint: .bottom)
        }
    }
}

struct StudentTapInCompletionCardView_Previews: PreviewProvider {
    static var previews: some View {
        StudentTapInCompletionCardView()
            .environmentObject(ViewModel())
    }
}

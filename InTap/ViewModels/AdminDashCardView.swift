//
//  AdminDashCardView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/28/23.
//

import SwiftUI

struct AdminDashCardView: View {
    @EnvironmentObject var viewModel: ViewModel
    @Binding var isShowing: Bool
    @State var resultsOrCompletion: String
    @State var rating: Int
    
    var body: some View {
            VStack(spacing: 0.0) {
                VStack {
                    HStack {
                        Spacer()
                        Button {
                            isShowing.toggle()
                        } label: {
                            Image(systemName: "info.circle.fill")
                                .foregroundColor(.white)
                        }
                        
                    }
                    
                    Text("\(rating)%")
                        .foregroundColor(.white)
                        .font(.title)
                    
                    Text("\(viewModel.gradeFilter.gradeFilter)")
                        .foregroundColor(.white)
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
                    Text("\(resultsOrCompletion)")
                        .multilineTextAlignment(.center)
                        .font(.title3)
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

//struct AdminDashCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        AdminDashCardView(isShowing: false, gradeShowing: "Hi", resultsOrCompletion: "Tap In Completion")
//    }
//}

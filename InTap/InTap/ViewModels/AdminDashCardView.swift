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
                    
                    Text("90%")
                        .foregroundColor(.white)
                        .font(.title)
                    
                    Text("\(viewModel.gradeFilter.gradeFilter)")
                        .foregroundColor(.white)
                }
                .padding()
                .background {
                    Rectangle()
                        .fill (
                            LinearGradient(gradient: Gradient(colors: [Color("ButtonColor2"), Color("ButtonColor1")]), startPoint: .top, endPoint: .bottom)
                        )
                }
                
                HStack {
                    Spacer()
                    Text("\(resultsOrCompletion)")
                        .multilineTextAlignment(.center)
                        .font(.title2)
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
}

//struct AdminDashCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        AdminDashCardView(isShowing: false, gradeShowing: "Hi", resultsOrCompletion: "Tap In Completion")
//    }
//}

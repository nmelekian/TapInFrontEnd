//
//  AdminTeacherClassCardView.swift
//  InTap
//
//  Created by Nicholas Melekian on 3/1/23.
//

import SwiftUI

struct AdminTeacherClassCardView: View {
    @EnvironmentObject var viewModel: ViewModel
    @Binding var isShowing: Bool
    @State var resultsOrCompletion: String
    @State var classroom: String
    
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
                    
                    Text(classroom)
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

//struct AdminTeacherClassCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        AdminTeacherClassCardView(isShowing: false, resultsOrCompletion: "Tap In Results", classroom: .homeroom)
//            .environmentObject(ViewModel())
//    }
//}

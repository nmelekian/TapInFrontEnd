//
//  StaffSignUpView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/24/23.
//

import SwiftUI

struct StaffSignUpView: View {
    @State private var isShowingWaves = false
    
    var body: some View {
        
        VStack{
            Text("Sign Up")
                .font(.title)
            VStack{
                HStack {
                    Button {
                        
                    } label: {
                        ZStack{
                            Circle()
                                .fill(Color.buttonColor)
                                .frame(width: 120)
                            Text("Student")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }.padding(.bottom)
                }
                
                Button {
                    
                } label: {
                    ZStack{
                        Circle()
                            .fill(Color.buttonColor)
                            .frame(width: 120)
                            .padding()
                        Text("Staff")
                            .foregroundColor(.white)
                            .bold()
                        
                    }
                }
            }

        }
    }
}

struct StaffSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        StaffSignUpView()
    }
}

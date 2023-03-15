//
//  StaffSignUpInfoView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/24/23.
//

import SwiftUI

struct StaffSignUpInfoView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var securityQuestions = ["What's your favorite color?", "What was the name of your first pet?", "What is your mother's maiden name?", "What was the name of your elementary school?", "What brand was your first car?", "What is your favorite movie?"]
    
    var body: some View {
        VStack {
            Text("Sign Up")
                .font(.title)
            
            List {
                    TextField("School Name", text: $viewModel.admin.schoolName)
                    .padding([.bottom])
                    
                
                    
                    TextField("School Code", text:  $viewModel.admin.schoolCode)
                        .keyboardType(.numberPad)
                        .padding([.bottom, .vertical])
                    
                    
                
                
                
                    
                    TextField("First Name", text:  $viewModel.admin.firstName)
                    .padding([.bottom, .vertical])
                    
                
                
                
                    
                    TextField("Last Name", text:  $viewModel.admin.lastName)
                    .padding([.bottom, .vertical])
                    
                
                
               
                    
                    Picker("Select Security Question", selection: $viewModel.admin.securityQuestion) {
                        ForEach(securityQuestions, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.automatic)
    
                    
                
               
                    
                    TextField("Answer", text:  $viewModel.admin.securityQuestionAnswer)
                    .padding([.bottom, .vertical])
                    
                    
                
               
                    
                    TextField("Password", text:  $viewModel.admin.password)
                    .padding([.bottom, .vertical])
                    
                    
                
               
            }
                .listStyle(.plain)
                
            
            
            
            
            Button(action: {
                viewModel.createdTeachers.append(viewModel.teacher)
                viewModel.teacher = Teacher()
            }, label: {
                Image("TapInButton")
            })
            
            HStack{
                Text("Already have an account?")
                Button("Sign In") {
                    
                }
            }
            .padding()
            
            
        }
    }
    
}

struct StaffSignUpInfoView_Previews: PreviewProvider {
    static var previews: some View {
        StaffSignUpInfoView()
            .environmentObject(ViewModel())
    }
}

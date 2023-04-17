//
//  StaffSignUpDetailsView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/24/23.
//

import SwiftUI

struct StaffSignUpDetailsView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text("Sign Up")
                .font(.title)
            
            VStack(alignment: .leading){
                List {
                    TextField("First Name", text: $viewModel.teacher.firstName)
                        .padding([.bottom])
                    
                    
                    
                    TextField("Last Name", text:  $viewModel.teacher.lastName)
                        .keyboardType(.numberPad)
                        .padding([.bottom, .vertical])
                    
                    
                    
                    
                    
                    
                    TextField("Preferred Name", text:  $viewModel.teacher.preferredName)
                        .padding([.bottom, .vertical])
                    
                    
                    
                    
                    
                    TextField("Email", text:  $viewModel.admin.email)
                        .padding([.bottom, .vertical])
                    
                    
                    
                    
                    TextField("Username", text:  $viewModel.teacher.username)
                        .padding([.bottom, .vertical])
                    
                    
                    TextField("Password", text:  $viewModel.teacher.password)
                        .padding([.bottom, .vertical])
                    
                    
                    Picker("Select School Code", selection: $viewModel.admin.schoolCode) {
                        ForEach(viewModel.schoolCodes, id: \.self) {
                            Text($0)
                        }
                    }
                    
                }
                .listStyle(.plain)
                
               

            }
            
            
            
            
            
        
            
            
            
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

struct StaffSignUpDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        StaffSignUpDetailsView()
            .environmentObject(ViewModel())
    }
}

//
//  SignInView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/22/23.
//

import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack{
            Text("Sign In")
                .font(.title)
            Spacer(minLength: 75)
            List {
            
               
                    Section {
                        TextField("Email", text: $email)
                    }
                    Section {
                        TextField("Password", text: $password)
                    }
            }.scrollDisabled(true)
                .listStyle(.plain)
            
            
            Button {
                
            } label: {
                VStack{
                    Image("TapInButton")
                    Text("Tap to continue")
                }
            }
            Spacer(minLength: 350)
            
            HStack {
                Text("Don't have an account? ")
                Button("Sign up") {
                    
                }
                
            }

        }
        
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

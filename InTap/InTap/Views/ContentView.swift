//
//  ContentView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/21/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel
    @State private var isShowingAboutPage = false
    var body: some View {
        NavigationStack{
            VStack {
                Spacer()
                Image("TapInLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 150)
                
                Spacer(minLength: 100)
                
                NavigationLink(destination: {
                    SignUpView()
                }, label: {
                    Text("Sign Up")
                        .bold()
                })
                .buttonStyle(TapInButton())
                .foregroundColor(.white)
                Button {
                    isShowingAboutPage.toggle()
                } label: {
                    Text("About Tap In")
                        .bold()
                }
                .sheet(isPresented: $isShowingAboutPage) {
                    AboutTapInView()
                        .presentationDetents([.fraction(0.6)])
                }
                .buttonStyle(TapInButton())
                .foregroundColor(.white)
                .padding()
                
                
                Button("Sign In") {
                    
                }
            }
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}

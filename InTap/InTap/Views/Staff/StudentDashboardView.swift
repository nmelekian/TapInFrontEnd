//
//  StudentDashboardView.swift
//  InTap
//
//  Created by Nicholas Melekian on 3/14/23.
//

import SwiftUI

struct StudentDashboardView: View {
    @EnvironmentObject var viewModel: ViewModel
    @State private var pickerChoice = "Tap In Results"
    @State private var pickerChoices = ["Tap In Results", "Tap In Log"]
    @State private var counselor = "Counselor"
    
    var body: some View {
        
      VStack {
          Text("Zoe's Dashboard")
              .font(.title)
               Picker("Tap In Results and Log", selection: $pickerChoice) {
                   ForEach(pickerChoices, id: \.self) {
                       Text($0)
                   }
                   
               } .pickerStyle(.segmented)
               
               if pickerChoice == "Tap In Results" {
                   VStack {
                       List {
                           Section {
                               StudentWellbeingFactorCardView()
                               StudentTapInCompletionCardView()
                               
                           }
                           
                           Section {
                               HStack {
                                   VStack{
                                       Text("Mon")
                                           .padding(.bottom, 3)
                                       Image(systemName: "checkmark.circle")
                                   }.padding(.leading)
                                   VStack {
                                       Text("Tue")
                                           .padding(.bottom, 25)
                                   }.padding([.trailing,.leading])
                                   VStack {
                                       Text("Wed")
                                           .padding(.bottom, 25)
                                   }.padding([.trailing])
                                   VStack {
                                       Text("Thu")
                                           .padding(.bottom, 3)
                                       Image(systemName: "checkmark.circle")
                                   }.padding(.trailing)
                                   VStack {
                                       Text("Fri")
                                           .padding(.bottom, 3)
                                       Image(systemName: "checkmark.circle")
                                   }.padding(.trailing)
                               }
                           } header: {
                               Text("Week of Nov. 7 2022")
                               
                           }
                           
                           BarChartView()
                        
                           
                           Section {
                               
                           } header: {
                               Text("Zoe's School Community")
                           }
                           
                       }
                       
                       
                       
                       
                       
                       
                       
                       
                   }
                    } else {
                        Text("Hi World")
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                
            }
       }
        
}

struct StudentDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        StudentDashboardView()
            .environmentObject(ViewModel())
    }
}

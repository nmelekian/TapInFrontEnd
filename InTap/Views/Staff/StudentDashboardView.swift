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
    @State private var counselor = "Counselor: Mrs. Baker"
    @State private var homeroom = "Mr. Adams"
    
    
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
                               VStack(alignment: .leading){
                                   Text("Counselor")
                                   Text("Counselor: Mrs. Baker")
                                       .foregroundColor(.secondary)
                               }
                               VStack(alignment: .leading){
                                   Text("Homeroom")
                                   Text("Mr. Davidson")
                                       .foregroundColor(.secondary)
                               }
                               VStack(alignment: .leading){
                                   Text("2nd Period")
                                   Text("Counselor: Mrs. Baker")
                                       .foregroundColor(.secondary)
                               }
                               VStack(alignment: .leading){
                                   Text("3rd Period")
                                   Text("Counselor: Mrs. Baker")
                                       .foregroundColor(.secondary)
                               }
                               VStack(alignment: .leading){
                                   Text("4th Period")
                                   Text("Counselor: Mrs. Baker")
                                       .foregroundColor(.secondary)
                               }
                               VStack(alignment: .leading){
                                   Text("5th Period")
                                   Text("Counselor: Mrs. Baker")
                                       .foregroundColor(.secondary)
                               }
                               VStack(alignment: .leading){
                                   Text("6th Period")
                                   Text("Counselor: Mrs. Baker")
                                       .foregroundColor(.secondary)
                               }
                               VStack(alignment: .leading){
                                   Text("7th Period")
                                   Text("Counselor: Mrs. Baker")
                                       .foregroundColor(.secondary)
                               }
                           } header: {
                               Text("Zoe's School Community")
                           }
                           
                       }
                       
                       
                       
                       
                       
                       
                       
                       
                   }
                    } else {
                        List {
                            Section {
                                VStack(alignment: .leading) {
                                    HStack{
                                        Text("Eating Habits")
                                        Spacer()
                                        Text("12-01-22")
                                    }
                                    Text("Did not eat breakfast 3/5 days")
                                        .foregroundColor(.secondary)
                                        .font(.caption)
                                        .padding(.bottom)
                                    HStack {
                                        Image(systemName: "checkmark.square.fill")
                                            .foregroundColor(.blue)
                                        Text("Marked reviewed by all staff")
                                            .foregroundColor(.secondary)
                                            .font(.caption)
                                    }
                                }
                            }
                            Section {
                                VStack(alignment: .leading) {
                                    HStack{
                                        Text("Sleeping Habits")
                                        Spacer()
                                        Text("12-01-22")
                                    }
                                    Text("Did not feel rested 3 nights in a row")
                                        .foregroundColor(.secondary)
                                        .font(.caption)
                                        .padding(.bottom)
                                    HStack {
                                        Image(systemName: "checkmark.square.fill")
                                            .foregroundColor(.blue)
                                        Text("Marked reviewed by counselor, James Anderson +1")
                                            .foregroundColor(.secondary)
                                            .font(.caption)
                                    }
                                }
                            }
                            
                            
                            Section {
                                VStack(alignment: .leading) {
                                    HStack{
                                        Text("Mood")
                                        Spacer()
                                        Text("12-09-22")
                                    }
                                    Text("Thumbs down 3 days in a row")
                                        .foregroundColor(.secondary)
                                        .font(.caption)
                                        .padding(.bottom)
                                    HStack {
                                        Image(systemName: "checkmark.square.fill")
                                            .foregroundColor(.blue)
                                        Text("Marked reviewed by counselor, James Anderson +1")
                                            .foregroundColor(.secondary)
                                            .font(.caption)
                                    }
                                }
                            }
                            
                            Section {
                                VStack(alignment: .leading) {
                                    HStack{
                                        Text("Chat Request")
                                        Spacer()
                                        Text("12-09-22")
                                    }
                                    HStack{
                                        Image(systemName: "message.fill")
                                            .foregroundColor(.blue)
                                        Text("Student request to speak with James Anderson")
                                            .foregroundColor(.secondary)
                                            .font(.caption)
                                    }.padding(.top)
        
                                    HStack {
                                        Image(systemName: "checkmark.square.fill")
                                            .foregroundColor(.blue)
                                        Text("James Anderson marked reviewed on 12-09-22")
                                            .foregroundColor(.secondary)
                                            .font(.caption)
                                    }.padding(.top)
                            
                                }
                            }
                            
                            Section {
                                VStack(alignment: .leading) {
                                    HStack{
                                        Text("Mood")
                                        Spacer()
                                        Text("12-09-22")
                                    }
                                    Text("Thumbs down 3 days in a row")
                                        .foregroundColor(.secondary)
                                        .font(.caption)
                                    Text("response: \"im sad today my dog rain away\"")
                                        .foregroundColor(.secondary)
                                        .font(.caption)
                                        .bold()
                                        .padding(.bottom)
                                    HStack {
                                        Image(systemName: "checkmark.square.fill")
                                            .foregroundColor(.blue)
                                        Text("Marked reviewed by counselor, James Anderson +1")
                                            .foregroundColor(.secondary)
                                            .font(.caption)
                                    }
                                }
                            }
                            
                            
                            
                            
                            
                        }
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

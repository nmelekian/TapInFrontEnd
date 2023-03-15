//
//  StaffDashboardView.swift
//  InTap
//
//  Created by Nicholas Melekian on 3/14/23.
//

import SwiftUI

struct StaffDashboardView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    @State var isShowingCompletionPage = false
    @State var isShowingResultsPage = false
    @State var isShowingFilter = false
    @State var completion = "Tap In Completion"
    @State var results = "Tap In \n Results"
    
    var chatRequests = ["Don", "Daffy", "Daisy"]
    
    var studentsNotTappedIn = ["Cory Tripp", "Jamal Harris", "Angel Kahn"]
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                VStack {
                    Text("Dashboard")
                        .font(.largeTitle)
                        .fontDesign(.rounded)
                    
                    List {
                    
//                            HStack {
//                                Text("\(chatRequests.count)")
//                                    .font(.largeTitle)
//                                    .foregroundColor(Color.blue)
//                                    .padding(30)
                                
                                VStack{
                                    ForEach(chatRequests, id: \.self) { chatRequest in
                                            NavigationLink {
                                                Text(chatRequest)
                                            } label: {
                                                VStack(alignment: .leading){
                                                    Text("")
                                                    
                                                        .font(.headline)
                                                    Text("Mark reviewed")
                                                        .font(.caption)
                                                        .foregroundColor(Color.gray)
                                                }
                                            
                                        } .buttonStyle(BorderlessButtonStyle())
                                        
                                    }
                                    
                                }.buttonStyle(BorderlessButtonStyle())
//                            }
                            
//                         header: {
//                            Text("Chat Requests - \(chatRequests.count)")
//                                .headerProminence(.increased)
//
//                        }
                       
                        
                        Section {
                            ForEach(studentsNotTappedIn, id: \.self) { student in
                                NavigationLink {
                                    Text(student)
                                } label: {
                                    Text(student)
                                }
                            }
                            
                            
                        } header: {
                            Text("Students not Tapped In")
                                .headerProminence(.increased)
                        }
                        
                        Section {
                            Text("Should be a graph here")
                            
                        } header: {
                            Text("Tap In results that need review")
                                .headerProminence(.increased)
                        }
                        
                                    HStack {
                                        AdminDashCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, rating: 85)
                                            .sheet(isPresented: $isShowingCompletionPage) {
                                                TapInCompletionView()
                                                    .presentationDetents([.fraction(0.5)])
                                            }
                                        
                                        AdminDashCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, rating: 76)
                                            .sheet(isPresented: $isShowingResultsPage) {
                                                TapInResultsView()
                                                    .presentationDetents([.fraction(0.5)])
                                            }
                                        
                                    }.frame(maxWidth: 350)
                                .buttonStyle(BorderlessButtonStyle())
                                
                                
                                HStack {
                                    if viewModel.gradeFilter == .all{
                                        Text("Showing results for this \(viewModel.timeFilter.timeFilter.lowercased()), \(viewModel.gradeFilter.gradeFilter.lowercased()) grades. Tap to change")
                                            .foregroundColor(.secondary)
                                    } else {
                                        Text("Showing results for this \(viewModel.timeFilter.timeFilter.lowercased()), \(viewModel.gradeFilter.gradeFilter.lowercased()) grade. Tap to change")
                                            .foregroundColor(.secondary)
                                    }
                                    Button {
                                        isShowingFilter.toggle()
                                    } label: {
                                        Image(systemName: "line.3.horizontal.decrease.circle.fill")
                                            .foregroundColor(.black)
                                            .padding(.bottom, 20)
                                    }
                                    
                                    .sheet(isPresented: $isShowingFilter) {
                                        FilterView()
                                        
                                        Button {
                                            isShowingFilter.toggle()
                                        } label: {
                                            Text("Confirm")
                                                .foregroundColor(.white)
                                        }.buttonStyle(TapInButton())
                                            .presentationDetents([.fraction(0.5)])
                                    }
                                }
                                .buttonStyle(BorderlessButtonStyle())
                        
                        
                        BarChartView()
                        
                        
                     
                            Group{
                                HStack{
                                    AdminTeacherClassCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, classroom: "\(Period.homeroom)", rating: 90)
                                    AdminTeacherClassCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, classroom: "\(Period.homeroom)", rating: 14)
                                } .buttonStyle(BorderlessButtonStyle())
                                HStack{
                                    AdminTeacherClassCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, classroom: "\(Period.first.periodFilter)", rating: 34)
                                    AdminTeacherClassCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, classroom: "\(Period.first.periodFilter)", rating: 93)
                                }.buttonStyle(BorderlessButtonStyle())
                                    
                                    
                                HStack{
                                    AdminTeacherClassCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, classroom: "\(Period.second.periodFilter)", rating: 18)
                                    AdminTeacherClassCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, classroom: "\(Period.second.periodFilter)", rating: 28)
                                }.buttonStyle(BorderlessButtonStyle())
                                    
                                HStack{
                                    AdminTeacherClassCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, classroom: "\(Period.third.periodFilter)", rating: 83)
                                    AdminTeacherClassCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, classroom: "\(Period.third.periodFilter)", rating: 92)
                                }.buttonStyle(BorderlessButtonStyle())
                            }
    
                        
                        VStack{
                            Button {
                                
                            } label: {
                                Image("TapInButton")
                            }
                            
                            Text("Help a student Tap In")
                        }
                        .padding()
                        
                    }
                    
                    
                    
                }
            }
            
            
            
        }
    }
}

struct StaffDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        StaffDashboardView()
            .environmentObject(ViewModel())
    }
}

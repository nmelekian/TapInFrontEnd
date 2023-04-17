//
//  AdminTeacherClassView.swift
//  InTap
//
//  Created by Nicholas Melekian on 3/1/23.
//

import SwiftUI

struct AdminTeacherClassView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    @State var isShowingCompletionPage = false
    @State var isShowingResultsPage = false
    @State var isShowingFilter = false
    @State var completion = "Tap In Completion"
    @State var results = "Tap In \n Results"
    
    var body: some View {
        ScrollView {
            Text("Dashboard")
                .font(.title)
            Text("Westview High School")
            HStack {
                AdminDashCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, rating: 15)
                .sheet(isPresented: $isShowingCompletionPage) {
                    TapInCompletionView()
                        .presentationDetents([.fraction(0.5)])
                }
                AdminDashCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, rating: 25)
                .sheet(isPresented: $isShowingResultsPage) {
                    TapInResultsView()
                        .presentationDetents([.fraction(0.5)])
                }
                
            }.frame(maxWidth: 350)
            
            HStack {
                if viewModel.gradeFilter == .all{
                    Text("Showing results for this \(viewModel.timeFilter.timeFilter.lowercased()), \(viewModel.gradeFilter.gradeFilter.lowercased()) grades. \nTap to change")
                        .foregroundColor(.secondary)
                } else {
                    Text("Showing results for this \(viewModel.timeFilter.timeFilter.lowercased()), \(viewModel.gradeFilter.gradeFilter.lowercased()) grade. \nTap to change")
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
            
            VStack{
                BarChartView()
                
            }
            
        VStack{
            HStack{
                AdminTeacherClassCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, classroom: "\(Period.homeroom)", rating: 90)
                AdminTeacherClassCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, classroom: "\(Period.homeroom)", rating: 75)
            }
            HStack{
                AdminTeacherClassCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, classroom: "\(Period.first.periodFilter)", rating: 85)
                AdminTeacherClassCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, classroom: "\(Period.first.periodFilter)", rating: 90)
            }
                
                
            HStack{
                AdminTeacherClassCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, classroom: "\(Period.second.periodFilter)", rating: 85)
                AdminTeacherClassCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, classroom: "\(Period.second.periodFilter)", rating: 15)
            }
                
            HStack{
                AdminTeacherClassCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, classroom: "\(Period.third.periodFilter)", rating: 91)
                AdminTeacherClassCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, classroom: "\(Period.third.periodFilter)", rating: 83)
            }
        }
        .padding()
            
            
            
            
        }
        .background(Color("background"))
    }
}

struct AdminTeacherClassView_Previews: PreviewProvider {
    static var previews: some View {
        AdminTeacherClassView()
            .environmentObject(ViewModel())
    }
}

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
                AdminDashCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion)
                .sheet(isPresented: $isShowingCompletionPage) {
                    TapInCompletionView()
                        .presentationDetents([.fraction(0.5)])
                }
                AdminDashCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results)
                .sheet(isPresented: $isShowingResultsPage) {
                    TapInResultsView()
                        .presentationDetents([.fraction(0.5)])
                }
                
            }.frame(maxWidth: 350)
            
            HStack {
                Text("Showing results for this \(viewModel.timeFilter.timeFilter.lowercased()), \(viewModel.gradeFilter.gradeFilter.lowercased()). Tap to change")
                    .foregroundColor(.secondary)
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
                AdminTeacherClassCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, classroom: "\(Period.homeroom)")
                AdminTeacherClassCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, classroom: "\(Period.homeroom)")
            }
            HStack{
                AdminTeacherClassCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, classroom: "\(Period.first)")
                AdminTeacherClassCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, classroom: "\(Period.first)")
            }
                
                
            HStack{
                AdminTeacherClassCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, classroom: "\(Period.second)")
                AdminTeacherClassCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, classroom: "\(Period.second)")
            }
                
            HStack{
                AdminTeacherClassCardView(isShowing: $isShowingCompletionPage, resultsOrCompletion: completion, classroom: "\(Period.third)")
                AdminTeacherClassCardView(isShowing: $isShowingResultsPage, resultsOrCompletion: results, classroom: "\(Period.homeroom.periodFilter)")
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

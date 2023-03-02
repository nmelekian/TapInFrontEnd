//
//  AdminDashboardView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/22/23.
//

import SwiftUI
import Charts

struct AdminDashboardView: View {
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
                Button {
                    
                } label: {
                    Image("TapInButton")
                }
                
                Text("Help a student Tap In")
            }
            .padding()
            
            Button {
                
            } label: {
                Text("Sign out")
            }
            
            
            
        }
        .background(Color("background"))
    }
}

struct AdminDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        AdminDashboardView()
            .environmentObject(ViewModel())
    }
}

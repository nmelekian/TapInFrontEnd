//
//  FilterView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/24/23.
//

import SwiftUI

struct FilterView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: ViewModel
    @State private var count = 0
    
    var body: some View {
        VStack{
            HStack(alignment: .center){
                Spacer()
                Spacer()
                Text("Filter Options")
                    .font(.largeTitle)
                Spacer()
                Button(action: {
                                   dismiss()
                               }, label: { Image(systemName: "x.circle.fill") })
                .padding(.trailing)
            }
            
            VStack(alignment: .leading) {
                Text("Grades")
                    .padding([.leading,.trailing])
                ForEach(Grade.allCases, id: \.self) { grade in
                    VStack{
                        Button {
                            viewModel.gradeFilter = grade
                        } label: {
                            HStack {
                                Text(grade.gradeFilter)
                                    .foregroundColor(viewModel.gradeFilter == grade ? .accentColor : .secondary )
                                Spacer()
                                if viewModel.gradeFilter == grade {
                                    Image(systemName: "checkmark")
                                }
                                
                                
                            }.padding([.leading,.trailing])
                            
                        }
                    }
                }
            }
            .padding(.bottom)
            
            VStack(alignment: .leading) {
                Text("Time")
                    .padding([.leading,.trailing])
                ForEach(Time.allCases, id: \.self) { time in
                    VStack{
                        Button {
                            viewModel.timeFilter = time
                        } label: {
                            HStack {
                                Text(time.timeFilter)
                                    .foregroundColor(viewModel.timeFilter == time ? .accentColor : .secondary )
                                Spacer()
                                if viewModel.timeFilter == time {
                                    Image(systemName: "checkmark")
                                }
                                
                                
                            }.padding([.leading,.trailing])
                            
                        }
                    }
                }
            }
            
            

        }
    }
    
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
            .environmentObject(ViewModel())
    }
}

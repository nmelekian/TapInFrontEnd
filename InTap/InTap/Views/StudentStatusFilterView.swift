//
//  StudentStatusFilterView.swift
//  InTap
//
//  Created by Nicholas Melekian on 3/13/23.
//

import SwiftUI

struct StudentStatusFilterView: View {
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
              
                ForEach(StudentStatus.allCases, id: \.self) { status in
                    VStack{
                        Button {
                            viewModel.statusFilter = status
                        } label: {
                            HStack {
                                Text(status.statusFilter)
                                    .foregroundColor(viewModel.statusFilter == status ? .accentColor : .secondary )
                                Spacer()
                                if viewModel.statusFilter == status {
                                    Image(systemName: "checkmark")
                                }
                                
                                
                            }.padding([.leading,.trailing])
                            
                        }
                    }
                }
            }
            .padding(.bottom)
        }
    }
}

struct StudentStatusFilterView_Previews: PreviewProvider {
    static var previews: some View {
        StudentStatusFilterView()
            .environmentObject(ViewModel())
    }
}

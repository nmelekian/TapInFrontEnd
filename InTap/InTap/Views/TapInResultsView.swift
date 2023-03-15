//
//  TapInResultsView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/27/23.
//

import SwiftUI

struct TapInResultsView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text("Tap In Results")
                    .font(.title)
                    .padding()
                
                Button(action: {
                                   dismiss()
                               }, label: { Image(systemName: "x.circle.fill") })
            }
            
            Text("The percentage displayed represents the student's \"Well Being Factor\". This metric is calculated from the answers of the Tap In survey, which include questions about their sleeping, eating habits and mood. A lower score is an indicator that students might need extra support or attention. \n\n This information is designed to help teachers provide the necessary resources and support to improve the student's overall well-being and learning experience.")
                .multilineTextAlignment(.center)
                .padding([.top, .bottom])
        }
    }
}

struct TapInResultsView_Previews: PreviewProvider {
    static var previews: some View {
        TapInResultsView()
    }
}

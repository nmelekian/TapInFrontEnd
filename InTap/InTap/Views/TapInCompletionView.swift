//
//  TapInCompletionView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/27/23.
//

import SwiftUI

struct TapInCompletionView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text("Tap In Completion")
                    .font(.title)
                    .padding()
                
                Button(action: {
                    dismiss()
                }, label: { Image(systemName: "x.circle.fill") })
            }
            
            Text("The percentage displayed represents the total number of users who have completed their daily Tap In. This information is updated in real-time to give you a clear picture of how many students are actively participating.")
                .multilineTextAlignment(.center)
                .padding([.top, .bottom])
        }
    }
}

struct TapInCompletionView_Previews: PreviewProvider {
    static var previews: some View {
        TapInCompletionView()
    }
}

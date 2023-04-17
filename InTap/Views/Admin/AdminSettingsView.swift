//
//  AdminSettingsView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/27/23.
//

import SwiftUI

struct AdminSettingsView: View {
    @State var pickerOptions = ["Review Flags", "Settings"]
    @State var pickerChoice = "Review Flags"
    var body: some View {
        VStack(alignment: .center){
            Text("Review")
                .font(.largeTitle)
        
            Picker("Review or Settings", selection: $pickerChoice) {
                ForEach(pickerOptions, id: \.self) {
                    Text($0)
                }
                
            }
            .pickerStyle(.segmented)
            
            Text("Select responses to trigger review")
                .font(.caption)
                .foregroundColor(.secondary)
            
            if pickerChoice == "Review Flags" {
                ReviewFlagsView()
            } else {
                ReviewSettingsView()
            }
            
            
        }
        
    }
}

struct AdminSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        AdminSettingsView()
    }
}

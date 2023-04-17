//
//  ReviewSettingsView.swift
//  InTap
//
//  Created by Nicholas Melekian on 4/17/23.
//

import SwiftUI

struct ReviewSettingsView: View {
    @State var negResponse1 = false
    @State var numResponse1 =  0
    @State var daysinRow1 = 0
    @State var daysinWeek1 = 0
    
    @State var negResponse2 = false
    @State var numResponse2 =  0
    @State var daysinRow2 = 0
    @State var daysinWeek2 = 0
    
    @State var negResponse3 = false
    @State var numResponse3 =  0
    @State var daysinRow3 = 0
    @State var daysinWeek3 = 0
    var body: some View {
        List{
            Section("Eating Habits"){
                ReviewSettingsCard(negResponse: negResponse1, numResponse: numResponse1, daysinRow: daysinRow1, daysinWeek: daysinWeek1)
            }
            
            Section("Sleeping Habits"){
                ReviewSettingsCard(negResponse: negResponse2, numResponse: numResponse2, daysinRow: daysinRow2, daysinWeek: daysinWeek2)
            }
            
            Section("Well Being"){
                ReviewSettingsCard(negResponse: negResponse3, numResponse: numResponse3, daysinRow: daysinRow3, daysinWeek: daysinWeek3)
            }
        }
    }
}

struct ReviewSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewSettingsView()
    }
}

//
//  ReviewSettingsCard.swift
//  InTap
//
//  Created by Nicholas Melekian on 4/17/23.
//

import SwiftUI

struct ReviewSettingsCard: View {
    @State var negResponse: Bool
    @State var numResponse: Int
    @State var daysinRow: Int
    @State var daysinWeek: Int
    var body: some View {
        VStack{
            Toggle("Negative Response", isOn: $negResponse)
            Picker("How many cups", selection: $numResponse){
                ForEach(1..<6){
                    Text("\($0)")
                }
            }
            Picker("Days in a row", selection: $daysinRow){
                ForEach(1..<6){
                    Text("\($0)")
                }
            }
            Picker("Days in a week", selection: $daysinWeek){
                ForEach(1..<6){
                    Text("\($0)")
                }
            }        }
    }
}

struct ReviewSettingsCard_Previews: PreviewProvider {
    static var previews: some View {
        ReviewSettingsCard(negResponse: false, numResponse: 0, daysinRow: 0, daysinWeek: 0)
    }
}

//
//  TabView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/24/23.
//

import SwiftUI

struct AdminTabView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        TabView {
            AdminDashboardView()
                .tabItem {
                    Label("Dashboard", systemImage: "chart.bar.xaxis")
                }
           AdminTeachersView()
                .tabItem {
                    Label("Teachers", systemImage: "studentdesk")
                }
            AdminStudentsView()
                .tabItem {
                    Label("Students", systemImage: "person.3.fill")
                }
            AdminStudentsView()
                .tabItem {
                    Label("Settings", systemImage: "flag.fill")
                }
           
            
        }
    }
}

struct AdminTabView_Previews: PreviewProvider {
    static var previews: some View {
        AdminTabView()
            .environmentObject(ViewModel())
    }
}

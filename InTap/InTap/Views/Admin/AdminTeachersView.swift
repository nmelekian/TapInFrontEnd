//
//  AdminTeachersTab.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/24/23.
//

import SwiftUI

struct AdminTeachersView: View {
    @EnvironmentObject var viewModel: ViewModel
    @State private var searchText = ""
    @State private var teacherNames = ["John Johnson", "Dave Robinson", "Mark Murphy", "Doug Jones", "Abigail Douglas", "Zane McManson"]
    @State private var counselorNames = ["Dick Johnson", "John Jameson", "David Owens", "Owen Davids", "Mark Jacobs", "David Abrhams"]
    @State private var pickerChoices = ["Teachers", "Counselors"]
    @State private var pickerChoice = "Teachers"
    var body: some View {
        VStack{
            Text("\(pickerChoice)")
                .font(.largeTitle)
            Text("Westview High School")
            NavigationStack{
                
                Picker("Select School Code", selection: $pickerChoice) {
                    ForEach(pickerChoices, id: \.self) {
                        Text($0)
                    }
                    
                }
                .pickerStyle(.segmented)
                
                if pickerChoice == "Teachers" {
                    List {
                        ForEach(teacherSearchResults, id: \.self) { name in
                            NavigationLink {
                                Text(name)
                            } label: {
                                Text(name)
                            }
                        }
                        
                        
                    }
                } else {
                    List {
                        ForEach(counselorSearchResults, id: \.self) { name in
                            NavigationLink {
                                Text(name)
                            } label: {
                                Text(name)
                            }
                        }
                        
                        
                    }
                }
                
                
                    
                    
                
            }
            .background(Color("background"))
            .scrollContentBackground(.hidden)
        }
        .searchable(text: $searchText)
        .background(Color("background"))
        
    }
    
    var teacherSearchResults: [String] {
        if searchText.isEmpty {
            return teacherNames
        } else {
            return teacherNames.filter { $0.contains(searchText)}
        }
    }
    
    var counselorSearchResults: [String] {
        if searchText.isEmpty {
            return counselorNames
        } else {
            return counselorNames.filter { $0.contains(searchText)}
        }
    }
}

struct AdminTeachersView_Previews: PreviewProvider {
    static var previews: some View {
        AdminTeachersView()
            .environmentObject(ViewModel())
    }
}

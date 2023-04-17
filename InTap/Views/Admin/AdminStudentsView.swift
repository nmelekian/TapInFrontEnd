//
//  AdminStudentsView.swift
//  InTap
//
//  Created by Nicholas Melekian on 2/27/23.
//

import SwiftUI

struct AdminStudentsView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    
    var link = URL(string: "https://www.hackingwithswift.com")!
    
    @State private var pickerChoices: [Grade] = [.all, .ninth, .tenth, .eleventh, .twelfth]
    @State private var pickerChoice: Grade = .all
    @State private var searchText = ""
    @State private var students = [
        Student(studentName: "Doug Johson", status: "Good", grade: .ninth),
        Student(studentName: "Dale Carnegie", status: "Needs Attention", grade: .ninth),
        Student(studentName: "Davis Martin", status: "Good", grade: .tenth),
        Student(studentName: "Marcus Samuelson", status: "Warning", grade: .eleventh)
    
    ]
    
    
    @State var isShowingFilter = false
    var body: some View {
        VStack{
            NavigationStack{
                Text("Students")
                    .font(.largeTitle)
                Text("Westview High School")
                Spacer()
                
                
                Picker("Grades", selection: $pickerChoice) {
                    ForEach(pickerChoices, id: \.self) {
                        Text($0.gradeFilter)
                    }
                }.pickerStyle(.segmented)
                
                
                    
                
                VStack(spacing: 0.0){
                    
                    
                    
                    Section {
                            List {
                               
                                ForEach(filteredGrades) { name in
                                        NavigationLink {
                                            Text(name.studentName)
                                        } label: {
                                            VStack(alignment: .leading){
                                                Text(name.studentName)
                                                    .bold()
                                                Text(name.status)
                                                    
                                            }
                                        }
                                    }
                                
                            }
                        
                        
                        
                        
                        
                    } header: {
                        HStack {
                            Text("Choose a student")
                                .foregroundColor(.secondary)
                            Spacer()
                            Button {
                                isShowingFilter.toggle()
                            } label: {
                                Image(systemName: "line.3.horizontal.decrease.circle.fill")
                                    .foregroundColor(.black)
                                
                            }
                            
                            
                            .sheet(isPresented: $isShowingFilter) {
                                StudentStatusFilterView()
                                
                                Button {
                                    isShowingFilter.toggle()
                                } label: {
                                    Text("Confirm")
                                        .foregroundColor(.white)
                                }.buttonStyle(TapInButton())
                                    .presentationDetents([.fraction(0.5)])
                            }
                            
                        }
                        .padding()
                    }
                }
                
                
                
                ShareLink(item: link) {
                    Text("Invite Students")
                }
                .buttonStyle(TapInButton())
                .foregroundColor(.white)
                .bold()
                .font(.title3)
                
                
            }
            .background(Color("background"))
            .scrollContentBackground(.hidden)
            
        }
        .searchable(text: $searchText)
        .background(Color("background"))
        
    }
    
    var filteredGrades: [Student] {
        switch pickerChoice {
        case .all:
            if searchText.isEmpty {
                return students
            } else {
                return students.filter { $0.studentName.contains(searchText)}
            }
        case .ninth:
            if searchText.isEmpty {
                return students.filter{ $0.grade == .ninth }
            } else {
                return students.filter { $0.studentName.contains(searchText)}
            }

        case .tenth:
            if searchText.isEmpty {
                return students.filter{ $0.grade == .tenth }
            } else {
                return students.filter { $0.studentName.contains(searchText)}
            }
        case .eleventh:
            if searchText.isEmpty {
                return students.filter{ $0.grade == .eleventh
                }
            } else {
                return students.filter { $0.studentName.contains(searchText)}
            }
        case .twelfth:
            if searchText.isEmpty {
                return students.filter{ $0.grade == .twelfth }
            } else {
                return students.filter { $0.studentName.contains(searchText)}
            }
        }
    }
}

struct AdminStudentsView_Previews: PreviewProvider {
    static var previews: some View {
        AdminStudentsView()
            .environmentObject(ViewModel())
    }
}

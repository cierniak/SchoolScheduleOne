//
//  ContentView.swift
//  SchoolScheduleOne
//
//  Created by Michal Cierniak on 10/14/19.
//  Copyright © 2019 Michal Cierniak. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: Student.getAllStudents()) var students: FetchedResults<Student>
    
    @State private var newStudent = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Add student")) {
                    HStack{
                        TextField("New student", text: self.$newStudent)
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }.font(.headline)
            }
            .navigationBarTitle(Text("Students"))
            .navigationBarItems(trailing: EditButton())
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

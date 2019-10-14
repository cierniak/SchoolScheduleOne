//
//  StudentView.swift
//  SchoolScheduleOne
//
//  Created by Michal Cierniak on 10/14/19.
//  Copyright © 2019 Michal Cierniak. All rights reserved.
//

import SwiftUI

struct StudentView: View {
    var name: String = ""
    var studentId: String = ""
    
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(name).font(.headline)
                Text(studentId).font(.caption)
            }
        }
    }
}

struct StudentView_Previews: PreviewProvider {
    static var previews: some View {
        StudentView()
    }
}

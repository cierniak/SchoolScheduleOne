//
//  Student.swift
//  SchoolScheduleOne
//
//  Created by Michal Cierniak on 10/14/19.
//  Copyright © 2019 Michal Cierniak. All rights reserved.
//

import Foundation
import CoreData

public class Student: NSManagedObject, Identifiable {
    @NSManaged public var studentId: UUID?
    @NSManaged public var name: String?
}

extension Student {
    static func getAllStudents() -> NSFetchRequest<Student> {
        let request: NSFetchRequest<Student> = Student.fetchRequest() as! NSFetchRequest<Student>
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        request.sortDescriptors = [sortDescriptor]
        return request
    }
}

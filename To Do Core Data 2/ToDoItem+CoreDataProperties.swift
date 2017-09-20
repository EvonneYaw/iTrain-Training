//
//  ToDoItem+CoreDataProperties.swift
//  To Do Core Data
//
//  Created by LTEIBCE51055E on 14/09/2017.
//  Copyright © 2017 LTEIBCE51055E. All rights reserved.
//

import Foundation
import CoreData


extension ToDoItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoItem> {
        return NSFetchRequest<ToDoItem>(entityName: "ToDoItem")
    }

    @NSManaged public var itemCompleted: Bool
    @NSManaged public var itemDesc: String?
    @NSManaged public var itemName: String?
    @NSManaged public var itemPlace: String?

}

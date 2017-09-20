//
//  Event+CoreDataProperties.swift
//  To Do Core Data
//
//  Created by LTEIBCE51055E on 14/09/2017.
//  Copyright © 2017 LTEIBCE51055E. All rights reserved.
//

import Foundation
import CoreData


extension Event {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Event> {
        return NSFetchRequest<Event>(entityName: "Event")
    }

    @NSManaged public var timestamp: NSDate?

}

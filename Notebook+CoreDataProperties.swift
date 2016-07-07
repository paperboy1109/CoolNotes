//
//  Notebook+CoreDataProperties.swift
//  CoolNotes
//
//  Created by Daniel J Janiak on 7/6/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Notebook {

    @NSManaged var creationDate: NSDate?
    @NSManaged var name: String?
    @NSManaged var notes: NSSet?

}

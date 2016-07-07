//
//  Notebook.swift
//  CoolNotes
//
//  Created by Daniel J Janiak on 7/6/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import Foundation
import CoreData


class Notebook: NSManagedObject {
    
    // Insert code here to add functionality to your managed object subclass
    
    convenience init (name: String, context: NSManagedObjectContext) {
        
        if let ent = NSEntityDescription.entityForName("Notebook", inManagedObjectContext: context) {
            self.init(entity: ent, insertIntoManagedObjectContext: context)
            self.name = name
            self.creationDate = NSDate()
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    
}

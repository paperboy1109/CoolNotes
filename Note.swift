//
//  Note.swift
//  CoolNotes
//
//  Created by Daniel J Janiak on 7/6/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import Foundation
import CoreData


class Note: NSManagedObject {
    
    // Insert code here to add functionality to your managed object subclass
    
    convenience init(text: String = "New Note", context: NSManagedObjectContext) {
        /*Create an NSEntityDescription */
        // (required to instantiate an NSObject class)
        if let ent = NSEntityDescription.entityForName("Note", inManagedObjectContext: context) {
            
            // (Call designated initializer = the initializer for NSManagedObject, here the superclass)
            self.init(entity: ent, insertIntoManagedObjectContext: context)
            
            self.text = text
            self.creationDate = NSDate()
            
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    
    var humanReadableAge: String {
        get {
            let fmt = NSDateFormatter()
            fmt.timeStyle = .NoStyle
            fmt.dateStyle = .ShortStyle
            fmt.doesRelativeDateFormatting = true
            fmt.locale = NSLocale.currentLocale()
            
            return fmt.stringFromDate(creationDate!)
        }
    }
    
}

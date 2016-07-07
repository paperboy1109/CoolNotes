//
//  NotebooksTableVC.swift
//  CoolNotes
//
//  Created by Daniel J Janiak on 7/6/16.
//  Copyright © 2016 Daniel J Janiak. All rights reserved.
//

import UIKit
import CoreData

class NotebooksTableVC: CoreDataTableVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* Title */
        title = "CoolNotes"
        
        /* Initialized Stack */
        let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let stack = delegate.stack
        
        /* Fetch request */
        
        let fr = NSFetchRequest(entityName: "Notebook")
        fr.sortDescriptors = [NSSortDescriptor(key: "name", ascending: true), NSSortDescriptor(key: "creationDate", ascending: false)]
        
        /* NSFetchedResultsController */
        
        fetchedResultsController = NSFetchedResultsController(fetchRequest: fr, managedObjectContext: stack.context, sectionNameKeyPath: nil, cacheName: nil)
    }
}

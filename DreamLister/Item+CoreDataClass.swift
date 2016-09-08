//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Andrew Stanley on 9/4/16.
//  Copyright © 2016 Andrew Stanley. All rights reserved.
//

import Foundation
import CoreData


public class Item: NSManagedObject {
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        
        self.created = NSDate()
    }
    
}

//
//  ItemType+CoreDataProperties.swift
//  DreamLister
//
//  Created by Andrew Stanley on 9/4/16.
//  Copyright © 2016 Andrew Stanley. All rights reserved.
//

import Foundation
import CoreData

extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType");
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}

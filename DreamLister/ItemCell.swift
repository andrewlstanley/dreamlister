//
//  ItemCell.swift
//  DreamLister
//
//  Created by Andrew Stanley on 9/6/16.
//  Copyright © 2016 Andrew Stanley. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var itemDescription: UILabel!
    
    func configureCell(item: Item) {
        
        title.text = item.title
        price.text = "$\(item.price)"
        itemDescription.text = item.details
        thumb.image = item.toImage?.image as? UIImage
    }
    
}

//
//  ItemDetailsVC.swift
//  DreamLister
//
//  Created by Andrew Stanley on 9/8/16.
//  Copyright © 2016 Andrew Stanley. All rights reserved.
//

import UIKit
import CoreData

class ItemDetailsVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!
    
    var stores = [Store]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let topItem = self.navigationController?.navigationBar.topItem {
            
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }

        storePicker.delegate = self
        storePicker.dataSource = self
        
//        let store = Store(context: context)
//            store.name = "Best Buy"
//        let store1 = Store(context: context)
//            store1.name = "Tesla Dealership"
//        let store2 = Store(context: context)
//            store2.name = "Frys Electronics"
//        let store3 = Store(context: context)
//            store3.name = "Amazon"
//        let store4 = Store(context: context)
//            store4.name = "NewEgg"
//        let store5 = Store(context: context)
//            store5.name = "Target"
//        
//        ad.saveContext()
        
        getStores()
    
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let store = stores[row]
        return store.name
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return stores.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // update when selected
    }
    
    func getStores() {
        let fetchRequest: NSFetchRequest<Store> = Store.fetchRequest()
        
        do {
            self.stores = try context.fetch(fetchRequest)
            self.storePicker.reloadAllComponents()
        } catch {
            // handle the error
        }
    }
    
    
    
    
    
    
    
    

}

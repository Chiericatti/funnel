//
//  CategoriesController.swift
//  funnel
//
//  Created by Drew Carver on 5/17/18.
//  Copyright © 2018 Rodrigo Sagebin. All rights reserved.
//

import Foundation
import CloudKit

class CategoryController {
    static var shared = CategoryController()
    var categories = [Category]()
    
    let category = ["food", "health", "animals", "education", "transportation", "tech", "outdoors", "personal", "science", "lifestyle"]
    
    func createNewCategory(withName name: String, completion: @escaping (Bool) -> Void) {
    }
    
    func updateCategory(category: Category, name: String, completion: @escaping (Bool) -> Void) {
    }
    
    // delete capability in the future
    
    func fetchAllCategories(completion: @escaping (Bool) -> Void) {
        //get predicate set up
    }
}

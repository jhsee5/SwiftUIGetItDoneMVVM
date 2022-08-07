//
//  ItemModel.swift
//  GetItDone
//
//  Created by Jian Hui See on 02/08/2022.
//

import Foundation

//immutable struct
//because all properties are let, not var
struct ItemModel: Identifiable, Codable { //Identifiable, easier to use in ForEach
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id //uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}

//
//  ItemModel.swift
//  GetItDone
//
//  Created by Jian Hui See on 02/08/2022.
//

import Foundation

struct ItemModel: Identifiable { //Identifiable, easier to use in ForEach
    let id: String = UUID().uuidString //uuidString
    let title: String
    let isCompleted: Bool
}

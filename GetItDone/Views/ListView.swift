//
//  ListView.swift
//  GetItDone
//
//  Created by Jian Hui See on 30/07/2022.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title:"This is the first title!", isCompleted: false),
        ItemModel(title:"This is the second!", isCompleted: true),
        ItemModel(title: "Third!", isCompleted: false)
    ]
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝") //ctrl cmd space
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddVIew())
            )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}

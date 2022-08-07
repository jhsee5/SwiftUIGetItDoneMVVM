//
//  NoItemsView.swift
//  GetItDone
//
//  Created by Jian Hui See on 07/08/2022.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView {
            VStack{
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click on the add button and add a bunch of items to your todo list! 📝")
                NavigationLink(destination: AddVIew(), label: {
                    Text("Add something 🥳")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .multilineTextAlignment(.center)
            .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        NoItemsView()
                .navigationTitle("Title")
        }
    }
}

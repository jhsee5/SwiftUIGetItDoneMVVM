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
                
            }
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

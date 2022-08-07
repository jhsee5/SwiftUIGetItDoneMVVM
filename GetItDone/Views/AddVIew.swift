//
//  AddVIew.swift
//  GetItDone
//
//  Created by Jian Hui See on 30/07/2022.
//

import SwiftUI

struct AddVIew: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListVM
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.green))
                    .cornerRadius(10)
                
                Button(action: {
                    saveButtonPressed()
                }, label : {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height:55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an item 🖋")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if(textIsAppropriate()) {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate()->Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long!!! 😨😰😱"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert()->Alert{
        return Alert(title: Text(alertTitle))
    }
}

struct AddVIew_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddVIew()
        }
        .environmentObject(ListVM())
    }
}

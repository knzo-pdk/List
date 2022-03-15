//
//  ContentView.swift
//  List
//
//  Created by Kenzo on 2/23/22.
//

import SwiftUI

struct ContentView: View {
    @State var itemList = [
        "Take vocal lessons",
        "Record hit single",
        "Learn every martial art",
        "Design costume",
        "Design crime-fighting vehicle",
        "Come up with superhero name",
        "Befriend space raccoon",
        "Save the world",
        "Star in blockbuster movie",]
    var body: some View {
        NavigationView{
            List{
                ForEach(itemList, id: \.self){ item in
                    Text(item)
                }
                .onDelete(perform: deleteListItem)
                .onMove(perform: moveListItem)
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle("Checklist")
            .onAppear(){
                printChecklistContents()
            }
        }
    }
    
    //methods
    func printChecklistContents(){
        for item in itemList {
            print(item)
        }
    }
    
    func deleteListItem(whichElement: IndexSet){
        itemList.remove(atOffsets: whichElement)
        printChecklistContents()
    }
    
    func moveListItem(whichElement: IndexSet, destination: Int){
        itemList.move(fromOffsets: whichElement, toOffset: destination)
        printChecklistContents()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

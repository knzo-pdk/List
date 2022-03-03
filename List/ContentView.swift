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
                ForEach(itemList, id:\.self){ item in
                    Text(item)
                        .onTapGesture {
                            itemList.remove(at: 0)
                            printChecklistContents()
                        }
                }
            }
            .navigationTitle("Checklist")
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
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

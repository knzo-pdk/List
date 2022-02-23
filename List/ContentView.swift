//
//  ContentView.swift
//  List
//
//  Created by Kenzo on 2/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            Text("Walk the dog")
            Text("Brush my teeth")
            Text("Learn iOS development")
            Text("Soccer practice")
            Text("Eat ice cream")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

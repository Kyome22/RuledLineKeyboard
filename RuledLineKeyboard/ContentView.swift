//
//  ContentView.swift
//  RuledLineKeyboard
//
//  Created by ky0me22 on 2023/09/03.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = ""

    var body: some View {
        VStack {
            Text("Note")
            TextEditor(text: $text)
                .fontDesign(.monospaced)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

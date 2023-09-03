//
//  ContentView.swift
//  JokesApp
//
//  Created by bui khac lam on 02/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        NavigationView {
            List(jokesVM.jokes) {element in
                Text(element.joke)
            }
            .navigationTitle("Joke App")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Text("Get New Joke")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
            .padding()
        
    }
}

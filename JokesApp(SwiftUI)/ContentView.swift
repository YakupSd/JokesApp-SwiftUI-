//
//  ContentView.swift
//  JokesApp(SwiftUI)
//
//  Created by Yakup Suda on 11.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        NavigationView{
            List(jokesVM.jokes) { element in
                Text(element.joke)
            }
            .toolbar{
                Button(action: addJokes) {
                    Text("Get New Joke")
                }
            }
            .navigationTitle(Text("Jokes App"))
        }
    }
    
    func addJokes(){
        jokesVM.getJokes()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

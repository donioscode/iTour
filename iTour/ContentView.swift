//
//  ContentView.swift
//  iTour
//
//  Created by doniyor normuxammedov on 20/01/24.
//

//
//NavigationStack {
//            List {
//                ForEach(destinations) { destination in
//                    VStack(alignment: .leading) {
//                        Text(destination.name)
//                            .font(.headline)
//
//                        Text(destination.date.formatted(date: .long, time: .shorttend))
//                    }
//                }
//            }
//            .navigationTitle("iTour")
//            .toolbar{
//                Button("Add Samples", action: addSamples)
//            }
//        }
//    }

import SwiftData
import SwiftUI

struct ContentView: View {
    
    @Query var destinations: [Destination]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(destinations){ destination in
                    VStack(alignment: .leading) {
                        Text(destination.name)
                            .font(.headline)
                        Text(destination.date.formatted(date: .long, time: .shortened))
                    }
                }
            }
            .navigationTitle("iTour")
            .toolbar{
                Button("Add Samples", action: addSamples)
            }
        }
    }

    func addSamples()  {
        let rome  = Destination(name: "Rome")
        let florence = Destination(name: "Florence")
        let naples  = Destination(name: "Naples")
    }
}

#Preview {
    ContentView()
}

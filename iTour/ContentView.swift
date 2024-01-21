//
//  ContentView.swift
//  iTour
//
//  Created by doniyor normuxammedov on 20/01/24.
//


import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query(sort:[SortDescriptor(\Destination.priority,order: .reverse),
                 SortDescriptor(\Destination.name)])
    var destinations: [Destination]
    @State var path = [Destination]()
    
    
    var body: some View {
        NavigationStack (path: $path) {
            List {
                ForEach(destinations){ destination in
                    NavigationLink(value: destination) {
                        VStack(alignment: .leading) {
                            Text(destination.name)
                                .font(.headline)
                            Text(destination.date.formatted(date: .long, time: .shortened))
                        }
                    }
                }
                .onDelete(perform: deleteDestinations)
            }
            .navigationTitle("iTour")
            .navigationDestination(for: Destination.self, destination: EditDestinationView.init)
            .toolbar{
                Button("Add Destiantion ", systemImage: "plus",action: addDestination)
            }
        }
    }

    func addDestination (){
        let destination = Destination()
        modelContext.insert(destination)
        path = [destination]
    }
    
    func deleteDestinations(_ indesxSet: IndexSet) {
        for index in indesxSet {
            let destination = destinations[index]
            modelContext.delete(destination)
        }
    }
}

#Preview {
    ContentView()
}

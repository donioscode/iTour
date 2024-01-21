//
//  DestinationListingView.swift
//  iTour
//
//  Created by doniyor normuxammedov on 21/01/24.
//

import SwiftUI
import SwiftData

struct DestinationListingView: View {
    @Environment(\.modelContext) var modelContext
    @Query(sort:[SortDescriptor(\Destination.priority,order: .reverse),
                 SortDescriptor(\Destination.name)])
    var destinations: [Destination]
    var body: some View {
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
    }
    func deleteDestinations(_ indesxSet: IndexSet) {
        for index in indesxSet {
            let destination = destinations[index]
            modelContext.delete(destination)
        }
    }
}

#Preview {
    DestinationListingView()
}

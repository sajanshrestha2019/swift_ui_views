//
//  ContentView.swift
//  SwiftUI Views
//
//  Created by Sajan Shrestha on 6/26/21.
//

import SwiftUI

struct ContentView: View {
    let images = [
        "https://cdn.pixabay.com/photo/2021/06/20/16/57/woman-6351539_1280.jpg",
        "https://cdn.pixabay.com/photo/2020/10/14/19/49/santorini-5655299_1280.jpg",
        "https://cdn.pixabay.com/photo/2021/05/28/11/39/girl-6290663__480.jpg",
        "https://cdn.pixabay.com/photo/2021/06/16/21/46/parrot-6342271__480.jpg"
    ]

    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(images, id: \.self) { image in
                    AsyncImage(url: URL(string: image), scale: 1.0) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        Image(systemName: "cloud")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Person: Identifiable {
    var name: String
    var profession: String
    var id = UUID()
}

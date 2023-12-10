//
//  ContentView.swift
//  MovieList
//
//  Created by 林楷祐 on 2023/11/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(movieData.indices,id: \.self) { x in
                    NavigationLink(destination:MovieDetailView(Movie: movieData[x])) {
                        MovieRowView(Movie: movieData[x])
                    }
                }
            }
            .navigationTitle("電影總覽")
            .toolbar {
                ToolbarItem (placement: .navigationBarLeading) {
                    Button {
                        //Demo
                    } label: {
                        Image(systemName: "heart.fill")
                    }

                }
                ToolbarItem (placement: .navigationBarTrailing) {
                    Button {
                        //Demo
                    } label: {
                        Image(systemName: "person.fill")
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

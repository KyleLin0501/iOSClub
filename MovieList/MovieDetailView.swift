//
//  MovieDetailView.swift
//  MovieList
//
//  Created by 林楷祐 on 2023/11/27.
//

import SwiftUI

struct MovieDetailView: View {
    var Movie: Movie
    var body: some View {
        VStack {
            VStack {
                Image(Movie.image)
                
                VStack (alignment:.leading){
                    Text(Movie.name)
                        .foregroundColor(.blue)
                        .bold()
                        .font(.title2)
                    Text("上映日期：\(Movie.date)")
                        .font(.title3)
                    Text("評分：\(Movie.rate)")
                        .font(.title3)
                }
                .padding()
                .navigationTitle(Movie.name)
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(Movie: Movie(name: "test", image: "test", date: "test", rate: "test"))
    }
}

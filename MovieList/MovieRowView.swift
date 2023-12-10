//
//  MoiveRowView.swift
//  MovieList
//
//  Created by 林楷祐 on 2023/11/27.
//

import SwiftUI

struct MovieRowView: View {
    var Movie: Movie
    var body: some View {
        HStack{
            Image(Movie.image)
                .resizable()
                .frame(width: 100, height: 150)
            VStack (alignment:.leading){
                Text(Movie.name)
                    .font(.title2)
                    .bold()
                Text("上映日期:\(Movie.date)")
                    .font(.title3)
            }
        }
    }
}

struct MovieRowView_Previews: PreviewProvider {
    static var previews: some View {
        MovieRowView(Movie: Movie(name: "test", image: "test", date: "test", rate: "test"))
    }
}

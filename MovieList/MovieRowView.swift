//
//  MoiveRowView.swift
//  MovieList
//
//  Created by 林楷祐 on 2023/11/27.
//

import SwiftUI

struct MovieRowView: View {
    var movieName: String
    var movieImage: String
    var movieDate: String
    var body: some View {
        HStack{
            Image(movieImage)
                .resizable()
                .frame(width: 100, height: 150)
            VStack (alignment:.leading){
                Text(movieName)
                    .font(.title2)
                    .bold()
                Text("上映日期\(movieDate)")
                    .font(.title3)
            }
        }
    }
}

struct MovieRowView_Previews: PreviewProvider {
    static var previews: some View {
        MovieRowView(movieName: "test", movieImage: "test", movieDate: "test")
    }
}

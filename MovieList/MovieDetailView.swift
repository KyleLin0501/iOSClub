//
//  MovieDetailView.swift
//  MovieList
//
//  Created by 林楷祐 on 2023/11/27.
//

import SwiftUI

struct MovieDetailView: View {
    var MovieName: String
    var MovieImage: String
    var MovieDate: String
    var MovieRate: String
    var body: some View {
        VStack {
            VStack {
                Image(MovieImage)
                
                VStack (alignment:.leading){
                    Text(MovieName)
                        .foregroundColor(.blue)
                        .bold()
                        .font(.title2)
                    Text("上映日期：\(MovieDate)")
                        .font(.title3)
                    Text("評分：\(MovieRate)")
                        .font(.title3)
                }
                .padding()
                .navigationTitle(MovieName)
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(MovieName: "test", MovieImage: "test", MovieDate: "test", MovieRate: "test")
    }
}

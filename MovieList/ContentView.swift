//
//  ContentView.swift
//  MovieList
//
//  Created by 林楷祐 on 2023/11/27.
//

import SwiftUI

struct ContentView: View {
    var movieName: [String] = ["富都青年","不可能的任務","玩命關頭","阿凡達"]
    var movieImage: [String] = ["富都青年","不可能的任務","玩命關頭","阿凡達"]
    var movieDate: [String] = ["12/1","7/8","5/17","4/21"]
    var movieRate: [String] = ["7.3","9.5","7.7","9.0"]
    var body: some View {
        NavigationView {
            List{
                ForEach(movieName.indices,id: \.self) { x in
                    NavigationLink(destination:MovieDetailView(MovieName: movieName[x] , MovieImage: movieImage[x], MovieDate: movieDate[x], MovieRate: movieRate[x])) {
                        MovieRowView(movieName: movieName[x], movieImage: movieImage[x], movieDate: movieDate[x])
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

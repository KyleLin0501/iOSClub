//
//  Data.swift
//  MovieList
//
//  Created by 林楷祐 on 2023/12/10.
//


struct Movie {
    var name: String
    var image: String
    var date: String
    var rate: String
}

let movieData: [Movie] = [
    Movie(name: "富都青年", image: "富都青年", date: "12/1", rate: "7.3"),
    Movie(name: "不可能的任務", image: "不可能的任務", date: "7/8", rate: "9.5"),
    Movie(name: "玩命關頭", image: "玩命關頭", date: "5/17", rate: "7.7"),
    Movie(name: "阿凡達", image: "阿凡達", date: "4/21", rate: "9.0")
]

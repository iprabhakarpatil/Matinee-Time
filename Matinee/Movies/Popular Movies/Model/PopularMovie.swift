//
//  PopularMovie.swift
//  Assignment
//
//  Created by prabhakar patil on 01/08/18.
//  Copyright © 2018 Prabhakar. All rights reserved.
//

import Foundation

class PopularMovie {
    
    var movieTitle: String!
    var movieRating: Float!
    var movieReleaseDate: String!
    var moviePosterImage: String!
    
    init(movieTitle: String, movieRating: Float, movieReleaseDate: String, moviePosterImage: String) {
        self.movieTitle = movieTitle
        self.movieRating = movieRating
        self.movieReleaseDate = movieReleaseDate
        self.moviePosterImage = moviePosterImage
    }
    
    init?(dictionary: [String: Any]) {
        
        guard let movieTitle = dictionary["title"] as? String,
               let movieRating = dictionary["vote_average"] as? NSNumber,
                let movieReleaseDate = dictionary["release_date"] as? String,
            let moviePosterImage = dictionary["poster_path"] as? String else {
                return nil
        }
        
        self.movieTitle = movieTitle
        self.movieRating = movieRating.floatValue
        self.movieReleaseDate = movieReleaseDate
        self.moviePosterImage = moviePosterImage
    }
    
//    init(viewModel: PopularMovieViewModel) {
//        self.movieTitle =
//    }
}


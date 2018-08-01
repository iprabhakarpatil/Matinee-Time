//
//  PopularMovieViewModel.swift
//  Assignment
//
//  Created by prabhakar patil on 01/08/18.
//  Copyright © 2018 Prabhakar. All rights reserved.
//

import Foundation

class PopularMovieListViewModel {
    
    var popularMovieViewModels: [PopularMovieViewModel] = [PopularMovieViewModel]()
    private var webService: Webservice
    private var pageNumber = 0
    private var completion: ()->() = {  }
    
    init(webService: Webservice, completion: @escaping () -> ()) {
        self.webService = webService
        self.completion = completion
        populatePopularMovies()
    }
    
    func populatePopularMovies() {
        
        if pageNumber <= MAX_PAGE {
            pageNumber += 1
        }
        
        webService.loadMovies(from: pageNumber) { (popularMovies) in
            
            if self.popularMovieViewModels.isEmpty {
                self.popularMovieViewModels = popularMovies.map(PopularMovieViewModel.init)
            } else {
                for movie in popularMovies {
                    self.popularMovieViewModels.append(PopularMovieViewModel.init(movie))
                }
            }
            
            self.completion()
        }
    }
    
    func popularMovieAt(index: Int) -> PopularMovieViewModel {
        return self.popularMovieViewModels[index]
    }
    
}


class PopularMovieViewModel {
    
    var movieTitle: String!
    var movieRating: Float!
    var movieReleaseDate: String!
    var moviePosterImage: String!
    
    init(_ popularMovie: PopularMovie) {
        
        self.movieTitle = popularMovie.movieTitle
        self.movieRating = popularMovie.movieRating
        self.movieReleaseDate = popularMovie.movieReleaseDate
        self.moviePosterImage = popularMovie.moviePosterImage
    }
}

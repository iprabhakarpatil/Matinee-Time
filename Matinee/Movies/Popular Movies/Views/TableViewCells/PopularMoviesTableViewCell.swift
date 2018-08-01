//
//  PopularMoviesTableViewCell.swift
//  Assignment
//
//  Created by prabhakar patil on 01/08/18.
//  Copyright © 2018 Prabhakar. All rights reserved.
//

import UIKit

class PopularMoviesTableViewCell: UITableViewCell {

    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var movieRatingLabel: UILabel!
    @IBOutlet var movieReleaseDate: UILabel!
    @IBOutlet var moviePosterImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

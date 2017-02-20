//
//  BusinessCell.swift
//  Yelp
//
//  Created by Kausthub Poondi on 2/13/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell{

    @IBOutlet weak var thumbRatings: UIImageView!
    @IBOutlet weak var thumbLabel: UILabel!
    @IBOutlet weak var thumbView: UIImageView!
    @IBOutlet weak var thumbReview: UILabel!
    @IBOutlet weak var thumbDescription: UILabel!
    @IBOutlet weak var thumbPrice: UILabel!
    @IBOutlet weak var thumbMiles: UILabel!
    @IBOutlet weak var thumbAddress: UILabel!
    @IBOutlet weak var miles: UILabel!
    var business: Business! {
        didSet {
            thumbLabel.text = business.name
            thumbView.setImageWith(business.imageURL!)
            thumbDescription.text = business.categories
            thumbAddress.text = business.address
            thumbReview.text = "\(business.reviewCount!) Reviews"
            thumbRatings.setImageWith(business.ratingImageURL!)
            miles.text = business.distance
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbView.layer.cornerRadius = 5
        thumbView.clipsToBounds = true
        // Initialization code
        thumbLabel.preferredMaxLayoutWidth = thumbLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        thumbLabel.preferredMaxLayoutWidth = thumbLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

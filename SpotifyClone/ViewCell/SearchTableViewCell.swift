//
//  SearchTableViewCell.swift
//  SpotifyClone
//
//  Created by MAC45 on 3/06/22.
//

import UIKit

class SearchTableViewCell: UITableViewCell {    
    
    @IBOutlet weak var converImage: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

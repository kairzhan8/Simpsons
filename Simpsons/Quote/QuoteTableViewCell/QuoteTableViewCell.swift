//
//  QuoteTableViewCell.swift
//  Simpsons
//
//  Created by Kairzhan Kural on 9/29/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit

class QuoteTableViewCell: UITableViewCell {

    @IBOutlet var quote: UILabel!
    @IBOutlet var characterImage: UIImageView!
    @IBOutlet var character: UILabel!
    
    var viewModel: QuoteTableViewCellViewModelProtocol! {
        didSet {
            quote.text = viewModel.quote
            character.text = viewModel.character
            guard let imageData = viewModel.characterImage else { return }
            characterImage.image = UIImage(data: imageData)
        }
    }

}

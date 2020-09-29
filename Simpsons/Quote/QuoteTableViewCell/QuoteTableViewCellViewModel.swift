//
//  QuoteTableViewCellViewModel.swift
//  Simpsons
//
//  Created by Kairzhan Kural on 9/29/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import Foundation

class QuoteTableViewCellViewModel: QuoteTableViewCellViewModelProtocol {
    
    var quote: String? {
        simpson.quote
    }
    
    var characterImage: Data? {
        ImageManager.shared.fetchImages(from: simpson.image)
    }
    
    var character: String? {
        simpson.character
    }
    
    private var simpson: Simpson
    
    required init(simpson: Simpson) {
        self.simpson = simpson
    }
    
    
}

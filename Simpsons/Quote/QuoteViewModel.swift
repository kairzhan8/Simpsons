//
//  QuoteViewModel.swift
//  Simpsons
//
//  Created by Kairzhan Kural on 9/29/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import Foundation

class QuoteViewModel: QuoteViewModelProtocol {
    
    var simpsons: [Simpson] = []
    
    func fetchSimpsons(completion: @escaping () -> Void) {
        NetworkManager.shared.fetchData { (simpsons) in
            self.simpsons = simpsons
            completion()
        }
    }
    
    func numberOfRows() -> Int? {
        simpsons.count
    }
    
    func cellViewModel(for indexPath: IndexPath) -> QuoteTableViewCellViewModelProtocol? {
        let simpson = simpsons[indexPath.row]
        return QuoteTableViewCellViewModel(simpson: simpson)
    }
}

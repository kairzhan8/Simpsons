//
//  QuoteViewModelProtocol.swift
//  Simpsons
//
//  Created by Kairzhan Kural on 9/29/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import Foundation

protocol QuoteViewModelProtocol {
    var simpsons: [Simpson] { get }
    func fetchSimpsons(completion: @escaping () -> Void)
    func numberOfRows() -> Int?
    func cellViewModel(for indexPath: IndexPath) -> QuoteTableViewCellViewModelProtocol?
}

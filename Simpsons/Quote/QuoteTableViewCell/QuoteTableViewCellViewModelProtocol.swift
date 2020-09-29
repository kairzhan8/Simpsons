//
//  QuoteTableViewCellViewModelProtocol.swift
//  Simpsons
//
//  Created by Kairzhan Kural on 9/29/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import Foundation

protocol QuoteTableViewCellViewModelProtocol {
    var quote: String? { get }
    var characterImage: Data? { get }
    var character: String? { get }
    init(simpson: Simpson)
}

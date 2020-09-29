//
//  ImageManager.swift
//  Simpsons
//
//  Created by Kairzhan Kural on 9/29/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import Foundation

class ImageManager {
    static let shared = ImageManager()
    
    func fetchImages(from imageUrl: String?) -> Data? {
        guard let url = imageUrl else { return nil}
        guard let stringUrl = URL(string: url) else { return nil }
        guard let imageData = try? Data(contentsOf: stringUrl) else { return nil }
        
        return imageData
    }
}

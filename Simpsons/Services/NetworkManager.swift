//
//  NetworkManager.swift
//  Simpsons
//
//  Created by Kairzhan Kural on 9/28/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//
import Alamofire

class NetworkManager {
    
    static let shared = NetworkManager()
    private let url = "https://thesimpsonsquoteapi.glitch.me/quotes"
    
    func fetchData(comletion: @escaping ([Simpson]) -> Void) {
        guard let url = URL(string: url) else { return }
        AF.request(url).validate().responseJSON { (responseData) in
            switch responseData.result {
            case .failure(let error):
                print(error)
            case .success( _):
                guard let data = responseData.data else { return }
                let decodedData = try? JSONDecoder().decode([Simpson].self, from: data)
                let simpson = decodedData
                
                DispatchQueue.main.async {
                    comletion(simpson ?? [])
                }
            }
            
        }
        
    }
}

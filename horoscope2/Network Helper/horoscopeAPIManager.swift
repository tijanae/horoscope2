//
//  horoscopeAPIManager.swift
//  horoscope2
//
//  Created by Tia Lendor on 10/20/20.
//  Copyright © 2020 Tia Lendor. All rights reserved.
//

import Foundation

class horoscopeAPIManager {
    
    private init() {}
    
    static let shared = horoscopeAPIManager()
    
    func getTodaysHoroscope(completionHandler: @escaping (Result<[horoscopeModel], AppError>) -> Void) {
        
        var zodiacURL: URL {
            guard let url = URL(string: "http://sandipbgt.com/theastrologer/api/horoscope/all/today") else { fatalError("Error: Invalid URL")}
            return url
        }
        
        NetworkHelper.manager.performDataTask(withUrl: zodiacURL, andMethod: .get) { (result) in
            switch result {
            case .failure(let error):
                completionHandler(.failure(error))
                return
            case .success(let data):
                do {
                    let zodiacData = try JSONDecoder().decode([horoscopeModel].self, from: data)
                    completionHandler(.success(zodiacData))
                } catch {
                    completionHandler(.failure(.couldNotParseJSON(rawError: error)))
                }
            }
        }
    }
    
    
    
}

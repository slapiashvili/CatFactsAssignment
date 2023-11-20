//
//  CatFactsAPI.swift
//  CatFactsAssignment
//
//  Created by Salome Lapiashvili on 20.11.23.
//

// CatFactsAPI.swift

import Alamofire

final class CatFactsAPI {
    static let shared = CatFactsAPI()

    private let apiUrl = "https://catfact.ninja/facts" 
    
    func getCatFacts(completion: @escaping ([CatFactModel]?) -> Void) {
        AF.request(apiUrl).responseDecodable(of: CatFactsResponse.self) { response in
            switch response.result {
            case .success(let catFactsResponse):
                completion(catFactsResponse.data)
            case .failure(let error):
                print("Error fetching cat facts: \(error)")
                completion(nil)
            }
        }
    }
}



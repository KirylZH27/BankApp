//
//  ProviderStones.swift
//  BankApp
//
//  Created by Кирилл Жогальский on 19.01.23.
//

import Foundation
import Moya
import Moya_ObjectMapper

class ProviderStones {
    private let provider = MoyaProvider<APIStones>(plugins: [NetworkLoggerPlugin()])
   
    func getBanki(success: (([ModelStones]) -> Void)?, failure: (() -> Void)?) {
        provider.request(.getStones){ result in
            switch result {
                case .success(let responce):
                    guard let result = try?
                            responce.mapArray(ModelStones.self) else {
                        failure?()
                        return
                    }
                    success?(result)
                case .failure(let _):
                    failure?()
            }
            
        }
    }
}

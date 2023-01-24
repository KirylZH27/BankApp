//
//  ProviderDiamonds.swift
//  BankApp
//
//  Created by Кирилл Жогальский on 19.01.23.
//

import Foundation
import Moya
import Moya_ObjectMapper

class ProviderDiamonds {
    private let provider = MoyaProvider<APIDiamonds>(plugins: [NetworkLoggerPlugin()])
   
    func getBanki(success: (([ModelDiamonds]) -> Void)?, failure: (() -> Void)?) {
        provider.request(.getMetal){ result in
            switch result {
                case .success(let responce):
                    guard let result = try?
                            responce.mapArray(ModelDiamonds.self) else {
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


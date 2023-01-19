//
//  APIStones.swift
//  BankApp
//
//  Created by Кирилл Жогальский on 19.01.23.
//

import Foundation
import Moya

enum APIStones {
     case getStones
}

extension APIStones: TargetType {
   
    var baseURL: URL {
        return URL (string: "https://belarusbank.by/api/getgems")!
    }
    
    var path: String {
        return ""
    }
    
    var method: Moya.Method {
        switch self {
            case.getStones:
                return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Moya.Task {
        guard let parameters else {return .requestPlain}
        
        return .requestParameters(parameters: parameters, encoding: encoding)
    }
    
    var headers: [String : String]? {
        return nil
    }
   
    var parameters: [String: Any]? {
        var params = [String: Any]()
        
        switch self{
            case .getStones:
                params["city"] = nil
        }
        return nil
    }
    
    var encoding: ParameterEncoding {
        switch self {
            case .getStones:
                return URLEncoding.queryString
        }
    }
    
    
}

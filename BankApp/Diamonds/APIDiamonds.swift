//
//  APIDiamonds.swift
//  BankApp
//
//  Created by Кирилл Жогальский on 19.01.23.
//

import Foundation
import Moya

enum APIDiamonds {
    case getMetal
}

extension APIDiamonds: TargetType {
    var baseURL: URL {
        return URL(string: "https://belarusbank.by/api/getinfodrall")!
    }
    
    var path: String {
        return ""
    }
    
    var method: Moya.Method {
        switch self {
            case.getMetal:
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
            case .getMetal:
                params["city"] = nil
        }
        return nil
    }
    
    var encoding: ParameterEncoding {
        switch self {
            case .getMetal:
                return URLEncoding.queryString
        }
    }
    
    
    
}

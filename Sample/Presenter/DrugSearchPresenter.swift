//
//  DrugSearchPresenter.swift
//  Sample
//
//  Created by Dinh Van Vu on 28/10/2021.
//

import Foundation
import Alamofire
import SwiftUI

class DrugSearchPresenter: ObservableObject {
    
    @Published var items: [DrugSpecialistModel] = []
    @Published var isLoading = false
    
    func getSpecialist() {
        isLoading = true
        let request = Alamofire.request("https://develop-mobile.famishare.jp/api/ma/get/specialty_types",
                                        method: self.method(),
                                        parameters: self.params(),
                                        encoding: self.encoding(),
                                        headers: self.headers()
        )
        request.authenticate(usingCredential: credential()).responseJSON { response in
            self.isLoading = false
            switch response.result {
            case .success(let val):
                let data = DrugSpecialistReponse(data: val as? [AnyHashable: Any])
                self.items = data.items
            case .failure(_):
                break
            }
        }
        
    }
    
    public func params() -> Parameters {
        return [:]
    }

    public func encoding() -> Alamofire.ParameterEncoding {
        return URLEncoding.default
    }
    
    func credential() -> URLCredential {
        return URLCredential(user: "user", password: "drjoy3230", persistence: .forSession)
    }
    
    public func method() -> Alamofire.HTTPMethod {
        return .get
    }
    
    public func headers() -> Alamofire.HTTPHeaders {
        return [
            "Authorization": "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJwcm9kdWN0IjoiRFJKT1kiLCJvZmZpY2VfdHlwZSI6IkRSVUdfU1RPUkUiLCJwZXJzb25hbEZsYWciOmZhbHNlLCJyb2xlcyI6W10sIm9mZmljZV9zZXNzaW9uX2V4cGlyYXRpb24iOjAsIm9mZmljZV91c2VyX2lkIjoiNWVhN2ZkOGU1NjMzOTkwMDI2NTEwMjA0Iiwic2F2ZV9sb2dpbiI6ZmFsc2UsImVuYWJsZWQiOnRydWUsImF1dGhvcml0aWVzIjp7InJvbGUiOiJNUF8xIiwiZnVuYyI6eyJGUFNfMCI6WzgsOSwxMiwxNSwxNiwxOSwyMF19fSwiY2xpZW50X2lkIjoiZHJqb3kiLCJvZmZpY2VfaWQiOiI1ZWE3ZjY0MzU2MzM5OTAwMjY1MTAxZDkiLCJhdWQiOlsiZGVtbyJdLCJ1c2VyX2lkIjoiNWVhN2ZkOGU1NjMzOTkwMDI2NTEwMjA1Iiwic2NvcGUiOlsib3BlbmlkIiwiZWxlYXJuaW5nIl0sIm5vbmxvY2tlZCI6dHJ1ZSwianRpIjoiOGEwZDIwMmItM2Q1ZC00MzZkLTg1NjgtMTM0MzEzMTQxNDIxIn0.fn6fJjPtta0JrStlbXZBabtgjMjaaqPfTyQw4gDpOG5Kn6NeWlhoA09ByjMe9lUI_hltrkJMyfHz-lJ-V3QpbfdTaAeLysxUPFaAJfKE7lOTB2kawI_iui0q55mcc45XZ23uadhBzWqOlOSNzEXVPw2qegjHvujSqCdSoECxqXa9k-LM1H4Phz3cAEMD7C3QU0RuXSwQzxnP-hy6JEPAjNNL22MQu4U-RCn3iHaJ5_JIUCqyNBkdADrjzxCtzXjq37BYnT2luMEzjUGxxDkXRrOLTccVue-3hNjWegxI-EBzv_f9K68072Dnfj2SIFRAKG7T0VmI3HvYv8nMJ6xu7A"
        ]
    }
}

public class DrugSpecialistReponse {

    public var items = [DrugSpecialistModel]()
    public required init(data: [AnyHashable: Any]?) {
        if let objects = data?["specialtyTypes"] as? [[AnyHashable: Any]] {
            items = objects.map({ (object) -> DrugSpecialistModel in
                return DrugSpecialistModel(data: object)
            })
        }
    }
}

public class DrugSpecialistModel {

    public let id: String?
    public let specialtyTypeName: String?
    public let displayOrder: Int?
    public let specialtyAreaId: String?
    public let seperator: Bool?
    public let created: String?
    public let updated: String?
    public let delete: Bool?

    public required init(data: [AnyHashable: Any]?) {
        self.id = data?["id"] as? String
        self.specialtyTypeName = data?["specialtyTypeName"] as? String
        self.displayOrder = data?["displayOrder"] as? Int
        self.specialtyAreaId = data?["specialtyAreaId"] as? String
        self.seperator = data?["seperator"] as? Bool
        self.created = data?["created"] as? String
        self.updated = data?["updated"] as? String
        self.delete = data?["delete"] as? Bool
    }
}

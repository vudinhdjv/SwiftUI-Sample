//
//  SpecialistDetailView.swift
//  Sample
//
//  Created by Dinh Van Vu on 01/11/2021.
//

import SwiftUI

struct SpecialistDetailView: View {
    var item: DrugSpecialistModel
    var body: some View {
        Text(item.specialtyTypeName ?? "")
    }
}

struct SpecialistDetailView_Previews: PreviewProvider {
    
    static let data: [AnyHashable: Any] = [
        "id": "SN0009",
        "specialtyTypeName": "アレルギー科",
        "displayOrder": 5,
        "seperator": false
    ]
    
    static var previews: some View {
        SpecialistDetailView(item: DrugSpecialistModel(data: data))
    }
}

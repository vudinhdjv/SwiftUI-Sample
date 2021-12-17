//
//  SpecialistCell.swift
//  Sample
//
//  Created by Dinh Van Vu on 01/11/2021.
//

import SwiftUI

struct SpecialistCell: View {
    
    var item: DrugSpecialistModel
    
    var body: some View {
        Text(item.specialtyTypeName ?? "")
    }
}

struct SpecialistCell_Previews: PreviewProvider {
    
    static let data: [AnyHashable: Any] = [
        "id": "SN0009",
        "specialtyTypeName": "アレルギー科",
        "displayOrder": 5,
        "seperator": false
    ]
    
    static var previews: some View {
        SpecialistCell(item: DrugSpecialistModel(data: data))
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
    }
}


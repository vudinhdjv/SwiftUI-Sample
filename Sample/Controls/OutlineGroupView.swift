//
//  SampleOutlineGroupView.swift
//  Sample
//
//  Created by Dinh Van Vu on 25/11/2021.
//

import SwiftUI

struct SampleOutlineGroupView: View {
    var body: some View {
        OutlineGroup(data, children: \.children) { item in
            Text("\(item.description)")
        }
    }
}

struct SampleOutlineGroupView_Previews: PreviewProvider {
    static var previews: some View {
        SampleOutlineGroupView()
    }
}

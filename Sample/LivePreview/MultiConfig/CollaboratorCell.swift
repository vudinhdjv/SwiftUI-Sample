//
//  CollaboratorCell.swift
//  Sample
//
//  Created by Dinh Van Vu on 01/11/2021.
//

import SwiftUI

struct CollaboratorCell: View {
    
    let name: String
    let image: Image?
    let connectionStatus: ConnectionStatus
    
    var body: some View {
        let nameLabel = Text("\(name)")
        let color = connectionStatus == .online ? UIColor.green : UIColor.gray
        
        
        return HStack {
            Color(color)
                .frame(width: 20, height: 20)
                .clipShape(Circle())
            if image == nil {
                Text("JD")
                    .background(Color.gray)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            } else {
                image!
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
            }
            nameLabel
        }.padding(8)
    }
    
    
    enum ConnectionStatus {
        case online
        case offline
    }
}

struct CollaboratorCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CollaboratorCell(
                name: "Jane Doe",
                image: nil,
                connectionStatus: .online
            )
                .previewLayout(.sizeThatFits)
            CollaboratorCell(
                name: "Jane Doe",
                image: Image("joe"),
                connectionStatus: .offline
            )
                .previewLayout(.sizeThatFits)
        }
    }
}

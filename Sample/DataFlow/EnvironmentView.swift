//
//  EnvirontMentView.swift
//  Sample
//
//  Created by Dinh Van Vu on 03/12/2021.
//

import SwiftUI


struct EnvironmentView: View {
    
    @EnvironmentObject var userDetails: UserDetails
    
    var body: some View {
        NavigationView {
            VStack {
                Text("First Name: \(userDetails.firstName)")
                    .font(.title)
                Text("Age Detail: \(userDetails.age)")
                    .font(.title)
                NavigationLink(
                    destination: BEnvironmentDetailView(),
                    label: {
                        Text("Tap me")
                            .padding(.all)
                            .background(Color.green)
                    })
            }
        }
    }
}

struct BEnvironmentDetailView: View {
    
    @EnvironmentObject var userDetails: UserDetails
    
    var body: some View {
        VStack {
            Text("Age Detail: \(userDetails.age)")
                .font(.title)
            NavigationLink(
                destination: BEnvironmentDetail2View(),
                label: {
                    Text("Tap me")
                        .padding(.all)
                        .background(Color.green)
                })
        }
    }
}

struct BEnvironmentDetail2View: View {
    
    @EnvironmentObject var userDetails: UserDetails
    
    var body: some View {
        VStack {
            Text("Age Detail: \(userDetails.age)")
                .font(.title)
            Button {
//                let serialQueue = DispatchQueue(label: "swiftlee.serial.queue", attributes: .concurrent)
//
//                serialQueue.async {
                    userDetails.age = 10
//                }
//                serialQueue.async {
//                    userDetails.age = 15
//                }
                
            } label: {
                Text("Tap me")
            }
            .padding(.all)
            .background(Color.green)
        }
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView().environmentObject(UserDetails())
    }
}

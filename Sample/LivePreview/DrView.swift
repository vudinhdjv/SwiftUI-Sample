//
//  DrugSearchSpecialistView.swift
//  Sample
//
//  Created by Dinh Van Vu on 28/10/2021.
//

import SwiftUI

struct DrView: View {
    
    @StateObject var presenter = DrugSearchPresenter()
    
    var body: some View {
        NavigationView {
            VStack {
                if presenter.isLoading {
                    ProgressView()
                } else {
                    List(presenter.items, id: \.id) { item in
                        NavigationLink(destination: SpecialistDetailView(item: item)) {
                                SpecialistCell(item: item)
                            }
                    }
                }
            }
            .onAppear(perform: {
                UITableView.appearance().contentInset.top = -35
                presenter.getSpecialist()
            })
            .navigationBarTitle("Mr Specialist", displayMode: .inline)
        }
    }
}

struct DrugSearchSpecialistView_Previews: PreviewProvider {
    static var previews: some View {
        DrView()
    }
}

























struct OtherListView: View {
    @ObservedObject var presenter = DrugSearchPresenter()
    
    init() {
        presenter.getSpecialist()
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(presenter.items, id: \.id) { item in
                        NavigationLink(destination: SpecialistDetailView(item: item)) {
                            SpecialistCell(item: item)
                        }
                    }
                }
            }.navigationBarTitle("Title", displayMode: .inline)
        }
    }
}

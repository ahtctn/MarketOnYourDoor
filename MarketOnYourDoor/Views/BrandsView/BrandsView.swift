//
//  BrandsView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 12.06.2023.
//

import SwiftUI

struct BrandsView: View {
    let data = CompanyDataModelList.mList
    
    var body: some View {

        NavigationView {
            List {
                ForEach(data.indices, id: \.self) { index in
                    NavigationLink(destination: BrandDetailView(companyModel: data[index])) {
                        if index % 2 == 0 {
                            EvenRowView(companyModel: data[index])
                        } else {
                            OddRowView(companyModel: data[index])
                        }
                    }
                }
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            
            
            .navigationTitle("Markalar")
        }
    }
}

struct BrandsView_Previews: PreviewProvider {
    static var previews: some View {
        BrandsView()
    }
}

//
//  HomeView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct HomeView: View {
    let mCompanyList: [CompanyModel]
    let data = (1...50).map { "Item \($0)" }
    let rows = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                //MARK: FİRMALAR
                
                ScrollView(.horizontal) {
                    HStack(spacing: 1) {
                        ForEach(CompanyDataModelList.mList) { item in
                            CompanyViewCell(cellItem: item)
                        }
                    }
                    .padding(5)
                }.background(Color.backgroundColorForCells)
                    .overlay(
                        RoundedRectangle(cornerRadius: 3)
                            .stroke(.gray, lineWidth: 1)
                    ).padding(.bottom, 7)
                
                //Kampanyalar
                VStack(alignment: .leading, spacing: 10) {
                    Spacer(minLength: 1)
                    HStack(alignment: .bottom, spacing: 10) {
                        Text("İlginizi Çekebilecek Kampanyalar...")
                            .padding(.leading, 15)
                            .font(.body.weight(.regular))
                            .foregroundColor(Color.headersTitleColor)
                        NavigationLink(destination: Text("NaviagtionLink")) {
                            HStack {
                                Text("Tümü")
                                    .font(.system(size: 14))
                                Image(systemName: "chevron.right")
                            }
                            .foregroundColor(Color.themeColor)
                        }
                    }.padding(.leading, 3)
                        .padding(.top, 5)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: -2) {
                            ForEach(CampaignDataModelList.mCampaignList) { item in
                                CampaignViewCell(cellItem: item)
                                    .shadow(color: .black.opacity(0.5),
                                            radius: 3,
                                            x: 0, y: 3)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    //MARK: TABITEM SCROLLABLE COUNT GELECEK.
                    .padding(.bottom, 20)
                }.background(Color.backgroundColorForCells)
                    .overlay(
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(.gray, lineWidth: 1)
                    ).padding(.bottom, -3)
                
                //Fırsatlar
                VStack(alignment: .leading, spacing: 10) {
                    HStack(alignment: .bottom, spacing: 10) {
                        Text("Fırsatlar")
                            .font(.body.weight(.regular))
                            .foregroundColor(Color.headersTitleColor)
                        NavigationLink(destination: Text("NaviagtionLink")) {
                            HStack {
                                Text("Fırsatları Keşfedin")
                                    .font(.system(size: 14))
                                Image(systemName: "chevron.right")
                            }.foregroundColor(Color.themeColor)
                        }.padding(.leading, 3)
                            .padding(.top, 10)
                    }
                    .padding(.leading, 15)
                    .padding(.top, 5)
                        
                    
                    ScrollView(.horizontal) {
                        OpportunitiesRowView(mDataList: ProductModelList.mProductList[3])
                    }.padding(.bottom, 10)
                }
                .background(Color.firsatlarBackgroundColor)
                .overlay(
                        RoundedRectangle(cornerRadius: 0)
                            .stroke(Color("rectangleLineColor"), lineWidth: 1)
                    )
                Spacer()
            }.background(Color.black.opacity(0.15)).padding(1)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(mCompanyList: [CompanyModel]())
    }
}


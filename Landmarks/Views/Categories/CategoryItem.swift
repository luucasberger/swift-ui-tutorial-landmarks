//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Lucas Berger on 7/7/24.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark


    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .leading) {
                landmark.image
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
                Text(landmark.name)
                    .foregroundStyle(.primary)
                    .font(.caption)
            }
            .padding(.leading, 15)
            
            if (landmark.isFavorite) {
                Image(systemName: "star.fill")
                    .resizable()
                    .foregroundStyle(.yellow)
                    .frame(width: 16, height: 16)
                    .padding(.top, 4)
                    .padding(.trailing, 4)
            }
        }
    }
}


#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}

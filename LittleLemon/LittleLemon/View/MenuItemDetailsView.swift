//
//  MenuItemDetaislView.swift
//  LittleLemon
//
//  Created by Hüseyin Emre Sarıoğlu on 18.05.2024.
//

import SwiftUI

struct MenuItemDetailsView: View {
    let menuItem: MenuItem

    var body: some View {
        ScrollView {
            VStack {
                Image("little-lemon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                Text(menuItem.title)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Text(String(format: "$%.2f", menuItem.price))
                    .font(.title)
                    .padding(.bottom)
                Text("Ordered: \(menuItem.ordersCount)")
                    .font(.title3)
                    .padding(.bottom)
                Text("Ingredients:")
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 5)
                ForEach(menuItem.ingredients, id: \.self) { ingredient in
                    Text(ingredient.rawValue.capitalized)
                }
            }
            .padding()
        }
        .navigationTitle(menuItem.title)
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(menuItem: MenuItem.mockData[0])
    }
}

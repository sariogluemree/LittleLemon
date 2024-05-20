//
//  ContentView.swift
//  LittleLemon
//
//  Created by Hüseyin Emre Sarıoğlu on 18.05.2024.
//

import SwiftUI

struct MenuItemsView: View {
    @ObservedObject private var viewModel = MenuViewViewModel()
    @State private var showingOptions = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        ForEach(viewModel.selectedCategories, id: \.self) { category in
                            MenuCategoryView(title: category.rawValue, items: viewModel.filteredMenuItems.filter { $0.category == category })
                        }
                    }

                }
            }
            .navigationTitle("Menu")
            .navigationBarItems(trailing: Button(action: {
                showingOptions.toggle()
            }) {
                Image(systemName: "slider.horizontal.3")
            })
            .sheet(isPresented: $showingOptions) {
                MenuItemsOptionView(selectedCategories: $viewModel.selectedCategories, sortOption: $viewModel.sortOption)
            }
        }
    }
}

struct MenuCategoryView: View {
    let title: String
    let items: [MenuItem]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .bold()
                .padding(.leading)
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(items) { item in
                    NavigationLink(destination: MenuItemDetailsView(menuItem: item)) {
                        VStack {
                            Image(item.image) // Değiştirildi: imageName kullanılmalı
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                            
                            Text(item.title)
                                .foregroundColor(.black)
                                .padding(.top, 5)
                                .padding(.horizontal, 10)
                                .background(Color.white.opacity(0.8))
                                .cornerRadius(5)
                        }
                    }
                }
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}

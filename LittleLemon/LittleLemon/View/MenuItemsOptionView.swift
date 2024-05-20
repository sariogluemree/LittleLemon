//
//  MenuItemsOptionView.swift
//  LittleLemon
//
//  Created by Hüseyin Emre Sarıoğlu on 18.05.2024.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedCategories: [MenuCategory]
    @Binding var sortOption: SortOption

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("SELECTED CATEGORIES")) {
                    ForEach(MenuCategory.allCases, id: \.self) { category in
                        HStack {
                            Text(category.rawValue)
                            Spacer()
                            if selectedCategories.contains(category) {
                                Image(systemName: "checkmark")
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            if let index = selectedCategories.firstIndex(of: category) {
                                selectedCategories.remove(at: index)
                            } else {
                                selectedCategories.append(category)
                            }
                        }
                    }
                }

                Section(header: Text("SORT BY")) {
                    ForEach(SortOption.allCases, id: \.self) { option in
                        HStack {
                            Text(option.rawValue)
                            Spacer()
                            if option == sortOption {
                                Image(systemName: "checkmark")
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            sortOption = option
                        }
                    }
                }
            }
            .navigationTitle("Filter")
            .navigationBarItems(trailing: Button("Done") {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    @State static var selectedCategories = [MenuCategory.food]
    @State static var sortOption = SortOption.mostPopular
    static var previews: some View {
        MenuItemsOptionView(selectedCategories: $selectedCategories, sortOption: $sortOption)
    }
}

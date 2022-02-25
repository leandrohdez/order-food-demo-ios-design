//
//  MainView.swift
//  OrderFood Example
//
//  Created by Leandro Hernandez on 10/2/22.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var viewModel: MainViewModel
    
    init(viewModel: MainViewModel = .init()) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        ZStack {
            Color.ui.white.edgesIgnoringSafeArea(.all)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 16) {
                    Spacer()
                        .frame(height: 70)
                    HighlightedView()
                        .padding(.horizontal, 16)
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Categories")
                            .font(.headline.weight(.bold))
                            .foregroundColor(Color.ui.black)
                            .frame(height: 40)
                            .padding(.horizontal, 16)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                CategoryButton(emoji: "🍔", title: "Burger", isSelected: true)
                                CategoryButton(emoji: "🍕", title: "Pizza")
                                CategoryButton(emoji: "🌭", title: "Hotdog")
                                CategoryButton(emoji: "🍟", title: "Snack")
                                CategoryButton(emoji: "🍩", title: "Donut")
                                CategoryButton(emoji: "🥑", title: "Vegan")
                            }
                            .padding(.horizontal, 16)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 0)
                    VStack(alignment: .leading, spacing: 8) {
                        HStack {
                            Text("Popular Now")
                                .font(.headline.weight(.bold))
                                .foregroundColor(Color.ui.black)
                                .frame(height: 40)
                            Spacer()
                            Button {
                                
                            } label: {
                                HStack(alignment: .center, spacing: 4) {
                                    Text("View All")
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.ui.gold)
                                    Image(systemName: "chevron.right.square.fill")
                                        .foregroundColor(Color.ui.gold)
                                }
                                .padding(.vertical, 8)
                            }
                        }
                        .padding(.horizontal, 16)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .center, spacing: 24) {
                                ForEach(self.viewModel.foods) { item in
                                    ItemView(
                                        imageName: item.imageName,
                                        name: item.name,
                                        description: item.description,
                                        price: item.price
                                    )
                                }
                            }
                            .padding(.horizontal, 16)
                            .padding(.top, 24)
                            .padding(.bottom, 56)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 0)
                    Spacer()
                        .frame(height: 70)
                }
            }
            .overlay {
                NavigationBar(title: "California, US")
                TabBar()
            }
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .onAppear {
            self.viewModel.loadFoods()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

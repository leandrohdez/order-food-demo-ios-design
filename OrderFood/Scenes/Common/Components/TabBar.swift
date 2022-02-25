//
//  TabBar.swift
//  OrderFood
//
//  Created by Leandro Hernandez on 18/2/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack {
            Color.clear
                .background(.white)
            HStack(alignment: .center) {
                
                VStack {
                    Button {
                        print("Tab 1")
                    } label: {
                        ZStack {
                            Image(systemName: "house.fill")
                                .font(.system(size: 24))
                                .frame(width: 48, height: 48, alignment: .center)
                                .foregroundColor(Color.ui.red)
                            Circle()
                                .fill(Color.ui.red)
                                .frame(width: 6, height: 6)
                                .frame(maxHeight: .infinity, alignment: .bottom)
                                .padding(.bottom, 6)
                        }
                    }
                    .background(Color.clear)
                }
                Spacer()
                Button {
                    print("Tab 2")
                } label: {
                    ZStack {
                        Image(systemName: "heart")
                            .font(.system(size: 24))
                            .frame(width: 48, height: 48, alignment: .center)
                            .foregroundColor(Color.ui.gray01)
                        Circle()
                            .fill(Color.clear)
                            .frame(width: 6, height: 6)
                            .frame(maxHeight: .infinity, alignment: .bottom)
                            .padding(.bottom, 6)
                    }
                }
                .background(Color.clear)
                Spacer()
                Spacer().frame(width: 72, height: 48)
                Spacer()
                Button {
                    print("Tab 4")
                } label: {
                    ZStack {
                        Image(systemName: "bell")
                            .font(.system(size: 24))
                            .frame(width: 48, height: 48, alignment: .center)
                            .foregroundColor(Color.ui.gray01)
                        Circle()
                            .fill(Color.clear)
                            .frame(width: 6, height: 6)
                            .frame(maxHeight: .infinity, alignment: .bottom)
                            .padding(.bottom, 6)
                    }
                }
                .background(Color.clear)
                Spacer()
                Button {
                    print("Tab 5")
                } label: {
                    ZStack {
                        Image(systemName: "cart")
                            .font(.system(size: 24))
                            .frame(width: 48, height: 48, alignment: .center)
                            .foregroundColor(Color.ui.gray01)
                        Circle()
                            .fill(Color.clear)
                            .frame(width: 6, height: 6)
                            .frame(maxHeight: .infinity, alignment: .bottom)
                            .padding(.bottom, 6)
                    }
                }
                .background(Color.clear)
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 24)
            .overlay {
                ZStack {
                    Button {
                        print("Tab 3")
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 24))

                            .foregroundColor(Color.ui.white)
                    }
                    .frame(width: 72, height: 72, alignment: .center)
                    .background(Color.ui.red)
                    .cornerRadius(36)
                    .offset(x: 0, y: -20)
                    .shadow(color: Color.ui.red.opacity(0.3), radius: 8, x: 0, y: 0)
                }
                .frame(height: 72)
                .frame(maxHeight: .infinity, alignment: .top)
            }
        }
        .frame(height: 70)
        .frame(maxHeight: .infinity, alignment: .bottom)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

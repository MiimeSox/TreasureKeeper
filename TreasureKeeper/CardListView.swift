//
//  ContentView.swift
//  TreasureKeeper
//
//  Created by Malte Schumacher on 15.05.23.
//

import SwiftUI

struct CardListView: View {
    
    let cards: [Cards] = Bundle.main.decode("cards.json")
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(cards) { card in
                    ZStack(alignment: .leading) {
                        NavigationLink(destination: CardDetailView(cards: card)) {
                            EmptyView()
                        }
                        .opacity(0)
                        
                        HStack(alignment: .top, spacing: 20) {
                            Image(card.image)
                                .resizable()
                                .frame(width: 100, height: 140)
                            
                            VStack(alignment: .leading) {
                                Text(card.name)
                                    .font(.system(.title2))
                                    .scaledToFit()
                                
                                Text(card.expansion)
                                    .font(.system(.body))
                                
                                Text(card.number)
                                    .font(.system(.body))
                            }
                        }
                    }
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            
            .navigationTitle("TreasureKeeper")
            .navigationBarTitleDisplayMode(.automatic)
        }
        .accentColor(.primary)
    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
        
        CardListView()
            .preferredColorScheme(.dark)
            .previewDisplayName("Card List View Dark")
    }
}

//
//  CardDetailView.swift
//  TreasureKeeper
//
//  Created by Malte Schumacher on 15.05.23.
//

import SwiftUI

struct CardDetailView: View {

    
    var cards: Cards
    
    var body: some View {
        NavigationStack {
            List {
                Section (header:
                            Text("\(cards.name)")
                    .font(.headline)
                ) {
                    
                    Image("\(cards.image)")
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                }
                Section(header:
                            Text("Details")
                    //.font(.headline)
                ) {
                    HStack {
                        Text("Name ")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Text(cards.name)
                    }
                    HStack {
                        Text("Type ")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Text(cards.type)
                    }
                    HStack {
                        Text("Set ")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Text(cards.expansion)
                    }
                    HStack {
                        Text("Number ")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Text(cards.number)
                    }
                    HStack {
                        Text("Rarity ")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Text(cards.rarity)
                    }
                    HStack {
                        Text("Artist ")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Text(cards.artist)
                    }
                    HStack {
                        Text("Text ")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Text(cards.summary)
                    }
                }
                //.listRowSeparator(.hidden)
            }
        }
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(cards: Cards(id: "acidic-slime", name: "Acidic Slime", type: "Creature - Ooze", expansion: "NEC", number: "112", rarity: "Uncommon", artist: "Karl Kopinsky", summary: "Deathtouch\nWhen Acidic Slime enters the battlefield, destroy target artifact, enchantment, or land."))
    }
}

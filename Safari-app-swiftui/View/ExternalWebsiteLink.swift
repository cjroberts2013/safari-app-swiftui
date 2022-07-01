//
//  ExternalWebsiteLink.swift
//  Safari-app-swiftui
//
//  Created by Charles Roberts on 6/30/22.
//

import SwiftUI

struct ExternalWebsiteLink: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWebsiteLink_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animal.json")
    
    static var previews: some View {
        ExternalWebsiteLink(animal: animals[0])
    }
}

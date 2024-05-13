// LinkListView.swift

import SwiftUI

struct LinkListView: View {
    let links: [Link]
    
    var body: some View {
        List(links) { link in
            VStack(alignment: .leading) {
                Text(link.title)
                    .font(.headline)
                Text(link.url.absoluteString)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct LinkListView_Previews: PreviewProvider {
    static var previews: some View {
        LinkListView(links: [
            Link(id: UUID(), title: "Example Link 1", url: URL(string: "https://example.com")!),
            Link(id: UUID(), title: "Example Link 2", url: URL(string: "https://example.com")!)
        ])
    }
}


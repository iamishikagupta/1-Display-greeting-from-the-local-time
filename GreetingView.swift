// GreetingView.swift

import SwiftUI

struct GreetingView: View {
    let greeting: String
    
    var body: some View {
        Text(greeting)
            .font(.title)
            .foregroundColor(.blue)
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(greeting: "Good Morning!")
    }
}

// ContentView.swift
// chatPrototype
//Code with the Descriptions _ISHARA

import SwiftUI  // Import the SwiftUI framework for declarative UI building

// The main view of your app
struct ContentView: View {
    
    // The "body" property describes what appears on the screen
    var body: some View {
        
        // VStack = Vertical Stack — arranges child views top-to-bottom
        //Also have HStack - Horizontal Stack - arranges child  left right.
        VStack {
            
            // SF symbolls is a library over 5000+ vector image made by apple.
            Image(systemName: "globe")
                .imageScale(.large)         // We can make this symbol small as well
                .foregroundStyle(.tint)     // Uses the system accent color (e.g., blue)
            
            // A simple text label below the image
            Text("Hello, world!")
                // We can add more adjustment as follows
                // .font(.title)
                // .fontWeight(.bold)
                // .foregroundColor(.orange)
        }
        .padding() // Adds space around the VStack so content isn't right at the edges
    }
}

// The preview shows your UI live in Xcode’s canvas
#Preview {
    ContentView()
}



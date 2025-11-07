//  ContentView.swift
//  WeatherForecast

import SwiftUI

// Main View
struct ContentView: View {
    var body: some View {
        // HStack arranges items horizontally (side by side)
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
        }
    }

}

#Preview {
    ContentView()
}

// Subview: DayForecast
struct DayForecast: View {
    // Data for one day
    let day: String
    let isRainy: Bool     // Whether it’s rainy or not
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"  // Use a rain cloud icon
        } else {
            return "sun.max.fill"     // Use a sun icon
        }
    }
    
    // Choose icon color depending on weather
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    // What the view looks like
    var body: some View {
        VStack(spacing: 3) { // Add spacing between each element
            Text(day)
                .font(Font.headline) // Make text slightly larger
            
            // Show the weather icon
            Image(systemName: iconName)   // Pick SF Symbol from iconName
                .foregroundStyle(iconColor) // Color it based on weather
                .font(Font.largeTitle)      // Make icon large
            
            // Show the high & Low temperature
            Text("High: \(high)")
            Text("Low: \(low)")
        }
        .padding(30)
    }
}



//ContentView is the main screen — it displays two weather forecasts side by side.
//DayForecast is a small, reusable part (component) that shows weather info for one day.
//Depending on whether it’s rainy or not, it changes the icon and color automatically.
//The VStack arranges each day’s info vertically (day → icon → temperatures).

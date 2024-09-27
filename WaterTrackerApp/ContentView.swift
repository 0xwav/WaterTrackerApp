
import SwiftUI

struct ContentView: View {
    @State private var trackerIsOn = true
    @State private var cups: Int = 0
    var body: some View {
        VStack {
            Text("Water Tracker 💦")
            
            Toggle(isOn: $trackerIsOn) {
                Text("Apple health")
            }
            
            Stepper("Cups to drink per day \(cups)",
                    value:$cups, in:1...100,step: 1 )
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

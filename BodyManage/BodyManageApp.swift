import SwiftUI

@main
struct BodyManageApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                NavigationLink("初期設定", destination: InitialView())
            }
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("ホームだよ")
    }
}

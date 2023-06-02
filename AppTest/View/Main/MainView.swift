import Combine
import Foundation
import SwiftUI
import SwiftUIX

struct MainView: View {
    @EnvironmentObject var appState: AppState
    var viewModel: MainViewModel
    let router: MainRouter
    @Environment(\.scenePhase) var scenePhase
    
    init(viewModel: MainViewModel, router: MainRouter) {
        self.viewModel = viewModel
        self.router = router
        let appearance = UITabBarAppearance()
        UITabBar.appearance().tintColor = UIColor(Colors.russianGreen)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 11)], for: .normal)
    }

    var body: some View {
        ZStack {
            CocoaNavigationView(navigationBarHidden: true) {
                TabView {
                    TaskViewFactory()
                        .tabItem({
                            TabItemView(item: .task, isSelected: true)
                        })
                        .tag(TabItem.task)
                    
                    ChatViewFactory()
                        .tabItem {
                            TabItemView(item: .chat, isSelected: false)
                        }
                        .tag(TabItem.chat)
                    
                    NotificationViewFactory()
                        .tabItem {
                            TabItemView(item: .notification, isSelected: false)
                        }
                        .tag(TabItem.notification)
                    
                    ProfileViewFactory()
                        .tabItem {
                            TabItemView(item: .profile, isSelected: false)
                        }
                        .tag(TabItem.profile)
                }
                .accentColor(Colors.russianGreen)
            }
        }
    }
}

/// Generic type that handles URL Schemes
protocol URLHandler {
    /// checks if the specified URL can be opened
    func canOpenURL(_ url: URL) -> Bool
    /// opens the specified URL
    func open(_ url: URL,
              options: [UIApplication.OpenExternalURLOptionsKey: Any],
              completionHandler completion: ((Bool) -> Void)?)
}

/// conforms UIApplication to URLHandler to allow dependency injection
extension UIApplication: URLHandler {}

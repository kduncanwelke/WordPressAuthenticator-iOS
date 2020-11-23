
import Foundation

public struct NavigateToEnterSite: NavigationCommand {
    public init() {}
    public func execute(from: UIViewController?) {
        presentUnifiedSiteAddressView(navigationController: from?.navigationController)
    }
}

private extension NavigateToEnterSite {
    /// Navigates to the unified site address login flow.
    ///
    func presentUnifiedSiteAddressView(navigationController: UINavigationController?) {
        guard let vc = SiteAddressViewController.instantiate(from: .siteAddress) else {
            DDLogError("Failed to navigate from LoginViewController to SiteAddressViewController")
            return
        }

        navigationController?.pushViewController(vc, animated: true)
    }
}

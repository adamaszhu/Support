/// ___FILENAME___
///
/// - version:
/// - date: ___DATE___
/// - author: ___FULLUSERNAME___
public protocol ___FILEBASENAME___Type: CoordinatorType {
}

final class ___FILEBASENAME___: Coordinator, ___FILEBASENAME___Type {
    
    private weak var viewController: <#ViewController#>?

    override func start(from sender: Any?) {
        let viewController = RStoryboard.<#Storyboard#>.instantiateInitialViewController()!
        viewController.inject(coordinator: self)
        <#Show View Controller#>
        self.viewController = viewController
    }
}

import UIKit

import DequeueableDataSource
import UIKit

class ViewController: UITableViewController {
    var viewModels = [
        [
            TextTableViewCellViewModel(text: "Cell 1").tableViewPresentable,
            TextTableViewCellViewModel(text: "Cell 2").tableViewPresentable,
            ImageTextTableViewCellViewModel(textViewModel: "Cell 3", imageViewModel: #imageLiteral(resourceName: "filter")).tableViewPresentable
        ],
        [
            TextTableViewCellViewModel(text: "Cell 3").tableViewPresentable
        ]
    ]

    lazy var dataSource = DequeueableTableViewDataSource()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = dataSource

        dataSource.reload(viewModels: viewModels, onTableView: tableView)
    }
}
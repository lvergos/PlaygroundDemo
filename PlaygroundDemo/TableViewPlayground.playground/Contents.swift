import UIKit
import XCPlayground
import SnapKit

class DetailViewController : UIViewController {
    var label: UILabel!
    var text: String! {
        didSet {
            label?.text = text
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detail"

        view.backgroundColor = UIColor.purpleColor()

        label = UILabel()
        view.addSubview(label)

        label.snp_makeConstraints(closure: { (make) -> Void in
            make.center.equalTo(view)
        })
    }
}

class CustomTableViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    let data = ["some", "strings", "Of", "Data"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Table View"

        view.backgroundColor = UIColor.yellowColor()

        let topView = UIView()
        topView.backgroundColor = UIColor.purpleColor()
        view.addSubview(topView)

        topView.snp_makeConstraints(closure: { (make) -> Void in
            make.left.top.right.equalTo(view)
            make.height.equalTo(100)
        })

        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = UIColor.redColor()
        view.addSubview(tableView)

        tableView.snp_makeConstraints(closure: { (make) -> Void in
            make.top.equalTo(topView.snp_bottom)
            make.left.right.bottom.equalTo(view)
        })
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        cell.textLabel?.text = "Cell \(indexPath.section).\(indexPath.row)"
        return cell
    }

    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let nextViewController = DetailViewController()
        nextViewController.text = "helllo"
        navigationController?.pushViewController(nextViewController, animated: true)
    }
}

let customTableViewController = CustomTableViewController()
let navigationController = UINavigationController(rootViewController: customTableViewController)

XCPlaygroundPage.currentPage.liveView = navigationController
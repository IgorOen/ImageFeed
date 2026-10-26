import UIKit

final class ProfileViewController: UIViewController {
    
    private lazy var avatarImageView = UIImageView()
    private lazy var nameLabel = UILabel()
    private lazy var loginLabel = UILabel()
    private lazy var bioLabel = UILabel()
    private lazy var logoutButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearance()
        addSubviews()
        setupConstraints()
    }
    
    private func configureAppearance() {
        view.backgroundColor = UIColor(
            red: 26.0 / 255.0,
            green: 27.0 / 255.0,
            blue: 34.0 / 255.0,
            alpha: 1
        )
        
        avatarImageView.image = UIImage(resource: .avatar)
        avatarImageView.contentMode = .scaleAspectFill
        avatarImageView.layer.cornerRadius = 35
        avatarImageView.clipsToBounds = true
        
        nameLabel.text = "Екатерина Новикова"
        nameLabel.font = .boldSystemFont(ofSize: 23)
        nameLabel.textColor = .white
        nameLabel.numberOfLines = 0
        
        loginLabel.text = "@ekaterina_nov"
        loginLabel.font = .systemFont(ofSize: 13)
        loginLabel.textColor = .gray
        loginLabel.numberOfLines = 0
        
        bioLabel.text = "Hello, world!"
        bioLabel.font = .systemFont(ofSize: 13)
        bioLabel.textColor = .white
        bioLabel.numberOfLines = 0
        
        logoutButton.setImage(
            UIImage(resource: .exit),
            for: .normal
        )
        logoutButton.tintColor = UIColor(
            red: 245.0 / 255.0,
            green: 107.0 / 255.0,
            blue: 108.0 / 255.0,
            alpha: 1
        )
    }
    
    private func addSubviews() {
        let profileViews: [UIView] = [
            avatarImageView,
            nameLabel,
            loginLabel,
            bioLabel,
            logoutButton
        ]
        
        for profileView in profileViews {
            profileView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(profileView)
        }
    }
    
    private func setupConstraints() {
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(
                equalTo: safeArea.topAnchor,
                constant: 32
            ),
            avatarImageView.leadingAnchor.constraint(
                equalTo: safeArea.leadingAnchor,
                constant: 16
            ),
            avatarImageView.widthAnchor.constraint(equalToConstant: 70),
            avatarImageView.heightAnchor.constraint(equalToConstant: 70),
            
            logoutButton.centerYAnchor.constraint(
                equalTo: avatarImageView.centerYAnchor
            ),
            logoutButton.trailingAnchor.constraint(
                equalTo: safeArea.trailingAnchor,
                constant: -16
            ),
            logoutButton.widthAnchor.constraint(equalToConstant: 44),
            logoutButton.heightAnchor.constraint(equalToConstant: 44),
            
            nameLabel.topAnchor.constraint(
                equalTo: avatarImageView.bottomAnchor,
                constant: 8
            ),
            nameLabel.leadingAnchor.constraint(
                equalTo: avatarImageView.leadingAnchor
            ),
            nameLabel.trailingAnchor.constraint(
                equalTo: safeArea.trailingAnchor,
                constant: -16
            ),
            
            loginLabel.topAnchor.constraint(
                equalTo: nameLabel.bottomAnchor,
                constant: 8
            ),
            loginLabel.leadingAnchor.constraint(
                equalTo: avatarImageView.leadingAnchor
            ),
            loginLabel.trailingAnchor.constraint(
                equalTo: safeArea.trailingAnchor,
                constant: -16
            ),
            
            bioLabel.topAnchor.constraint(
                equalTo: loginLabel.bottomAnchor,
                constant: 8
            ),
            bioLabel.leadingAnchor.constraint(
                equalTo: avatarImageView.leadingAnchor
            ),
            bioLabel.trailingAnchor.constraint(
                equalTo: safeArea.trailingAnchor,
                constant: -16
            )
        ])
    }
    
    
}

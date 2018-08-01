
#Users

tony = User.create(name: "Tony", password: "michael")
kai = User.create(name: "Kai", password: "michael")
luke = User.create(name: "Luke", password: "michael")
lin = User.create(name: "Lin", password: "michael")

marvel = Publisher.create(name: "Marvel")
dc = Publisher.create(name: "DC")
image = Publisher.create(name: "Image")

detcom = Comic.create(title: "Detective Comics", publisher: dc)
actcom = Comic.create(title: "Action Comics", publisher: dc)
xmen = Comic.create(title: "X-Men", publisher: marvel)
avengers = Comic.create(title: "Avengers", publisher: marvel)
walkdead = Comic.create(title: "The Walking Dead", publisher: image)
invincible = Comic.create(title: "Invincible", publisher: image)

Issue.create(issue_number: 34, comic: detcom)
Issue.create(issue_number: 67, comic: detcom)
Issue.create(issue_number: 43, comic: detcom)
Issue.create(issue_number: 99, comic: detcom)
Issue.create(issue_number: 55, comic: detcom)
Issue.create(issue_number: 33, comic: detcom)
Issue.create(issue_number: 1, comic: detcom)
Issue.create(issue_number: 1, comic: avengers)
Issue.create(issue_number: 71, comic: avengers)
Issue.create(issue_number: 17, comic: avengers)
Issue.create(issue_number: 19, comic: avengers)
Issue.create(issue_number: 79, comic: avengers)
Issue.create(issue_number: 1, comic: walkdead)
Issue.create(issue_number: 71, comic: walkdead)
Issue.create(issue_number: 17, comic: walkdead)
Issue.create(issue_number: 19, comic: walkdead)
Issue.create(issue_number: 79, comic: walkdead)
Issue.create(issue_number: 1, comic: invincible)
Issue.create(issue_number: 71, comic: invincible)
Issue.create(issue_number: 17, comic: invincible)
Issue.create(issue_number: 19, comic: invincible)
Issue.create(issue_number: 79, comic: invincible)
Issue.create(issue_number: 1, comic: xmen)
Issue.create(issue_number: 71, comic: xmen)
Issue.create(issue_number: 17, comic: xmen)
Issue.create(issue_number: 19, comic: xmen)
Issue.create(issue_number: 79, comic: xmen)
Issue.create(issue_number: 1, comic: actcom)
Issue.create(issue_number: 71, comic: actcom)
Issue.create(issue_number: 17, comic: actcom)
Issue.create(issue_number: 19, comic: actcom)
Issue.create(issue_number: 79, comic: actcom)

UserIssue.create(user: tony, issue: Issue.find(1))
UserIssue.create(user: tony, issue: Issue.find(3))
UserIssue.create(user: tony, issue: Issue.find(5))
UserIssue.create(user: tony, issue: Issue.find(11))
UserIssue.create(user: tony, issue: Issue.find(9))
UserIssue.create(user: tony, issue: Issue.find(7))
UserIssue.create(user: tony, issue: Issue.find(10))
UserIssue.create(user: tony, issue: Issue.find(6))
UserIssue.create(user: tony, issue: Issue.find(14))

UserIssue.create(user: kai, issue: Issue.find(2))
UserIssue.create(user: kai, issue: Issue.find(4))
UserIssue.create(user: kai, issue: Issue.find(5))
UserIssue.create(user: kai, issue: Issue.find(6))

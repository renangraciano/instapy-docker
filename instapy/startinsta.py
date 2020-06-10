from instapy import InstaPy

session = InstaPy(username="${instauser}",password="${instapass}",headless_browser=True)
session.login()

session.like_by_users(["breathandbrap"])
session.like_by_tags(["instabeer","forthegods","ftgnorole","craftbeer","cervejadepanela","cervejadeverdade"], amount=5)
session.set_dont_like(["naked","nsfw"])

session.set_do_follow(True, percentage=50)

session.end()

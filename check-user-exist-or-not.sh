import pwd

def user_chk(user):
    try:
        pwd.getpwnam(user).pw_name == user
        return f'User {user!r} exist.'
    except KeyError:
        return f'User {user!r} not exist.'
print(user_chk(input('Enter User Name: ')))

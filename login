data={}

def new_user():
	message='login desired:\nEnter user name:\t'
	while True:
		name=input(message)
		if name in data.keys():
			message= 'Name Already Assigned!!! Try Again:\nEnter user name:\t'
			continue
		else:
			break

	pwd= input('Enter password:\t')
	data[name]=pwd

def old_user():
	name=input('user name:\t')
	pwd=input('password:\t')
	password=data.get(name)
	if password==pwd:
		print ('Welcome Back',name)
	else:
		print ('Wrong Input!!!')

def show_menu():
	message='''
(N)ew User Signup
(E)xisting User Login
(Q)uit

Please Enter choice:\t'''

	done=False
	while not done:
		chosen=False
		while not chosen:
			try:
				choice=input(message).strip().lower()
			except(EOFError,KeyboardInterrupt):
				choice='q'

			print ('\nyou picked',choice)

			if choice not in'neq':
				print ('INVALID CHOICE!!! Try again')
			else:
				chosen=True

		if choice=='q':
			done=True
		if choice=='n':
			new_user()
		if choice=='e':
			old_user()

if __name__=='__main__':
	show_menu()

from subprocess import Popen, PIPE, STDOUT
from threading import Timer

def run_with_input(woo):
	p = Popen(['/home/kellar/Downloads/small'], stdout=PIPE, stdin=PIPE, stderr=STDOUT)    
	kill = lambda process: process.kill()
	my_timer = Timer(5, kill, [p])	 
	try:
	    my_timer.start()
	    grep_stdout = p.communicate(input=(bytes(woo,"ascii")+b'\n'))[0]
	finally:
	    my_timer.cancel()

	
	tempout = grep_stdout.decode()
	if(tempout != "PWD(A-Z):"):
		print(tempout)
		# print("%d %d"%(len(tempout), len("PWD(A-Z):")))
	# print(p.returncode)
	return p.returncode;

goods = []

for a in range(82,91):
	for b in range(65,91):
		for c in range(65,91):
			into = "%c%c%c"%(chr(a),chr(b),chr(c))
			print(into)
			if (into != 'RVA'):
				lmao = run_with_input(into)
				if lmao != -11:
					print("NOT AN -11!!! '%s' #=%d"%(into,lmao))
					goods.append((into,lmao))
			else:
				print("SKIPPED!")

for good in goods:
	print(good)

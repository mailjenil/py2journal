
from os import listdir,chdir,getcwd,remove
from os.path import isfile,join

scl=.5 													# Enter the fraction to scale screenshots	
root='Enter the Journal folder path here'				# Enter the path of journal directory here.

fil=open("ip.tex","w")
fil.write("\\documentclass[12pt,a4paper]{report}\n\\usepackage{graphicx}\n")

fil.write("\\addtolength{\\oddsidemargin}{-.875in}\n")
fil.write("\\addtolength{\\evensidemargin}{-.875in}\n")
fil.write("\\addtolength{\\textwidth}{1.75in}\n")
fil.write("\\addtolength{\\topmargin}{-.875in}\n")
fil.write("\\addtolength{\\textheight}{1.75in}\n")
fil.write("\\usepackage[T1]{fontenc}\n")

fil.write("\\begin{document}\n")
root_dir=[f for f in listdir(root)]
tot_labs=len(root_dir)

d=1

for i in range(tot_labs):
	s=1
	q=1
	c=1
	pre_dir='Lab'+str(d)
	if pre_dir in root_dir:
		files=[x for x in listdir(join(root,pre_dir))]
		fil_n=[x for x in files if x[0]=='q']
		temp_files=[x for x in fil_n if x[-1]=='~']
		for tem in temp_files:
			fil_n.remove(tem)
		pre_dir_name='LAB'+' '+str(d)
		
		#Prints the Lab number
		string='\\begin{center}\n\\Huge\\textbf{'+pre_dir_name+'}\\\\\n'
		fil.write(string)
				
		# Prints Labname
		lab_name_str=join(join(root,pre_dir),'ln.txt')
		fileln=open(lab_name_str,"r")
		ln=fileln.readline()
		fil.write("\\large{%s}"%ln)
		fileln.close()
		
		fil.write("\n\\end{center}\n\\vspace{1.0cm}\n")
		fil.write("\\begin{enumerate}\n")
		
		for j in range(len(fil_n)):
		
		
			# Prints Question.
			que='q'+str(q)+'.txt'
			que_name_str=join(join(root,pre_dir),que)
			fileq=open(que_name_str,"r")
			qu=fileq.readline()
			fil.write("\\item\\textbf{%s}\n"%qu)
			q=q+1
			fileq.close()
		
			#Prints Code
			sp_chr="#$%&^_{}!"
			cde='c'+str(c)+'.m'
			code_str=join(join(root,pre_dir),cde)
			filec=open(code_str,"r")
			code=filec.read()
			fil.write("\\begin{verbatim}\n")
			fil.write(code)
			fil.write("\\end{verbatim}")
			c=c+1
			filec.close()
			
			#Prints screenshot
			ss=1
			s_n=[x for x in files if x[:2]=='s'+str(s)]
			if s_n!=0:
				
				for k in range(len(s_n)):
					s_name=join(join(root,pre_dir),'s'+str(s)+'-'+str(ss)+'.png')		
					fil.write("\n\\fbox{\\includegraphics[scale=scl]{%s}\\\}"%s_name)
					ss=ss+1
			s=s+1
			
			fil.write("\\vspace{0.5cm}\n")
		fil.write("\n\\end{enumerate}")
	fil.write("\n\\pagebreak")	
	root_dir.remove(pre_dir)
	d=d+1
	
		
		
	
fil.write("\n\\end{document}")
fil.close()

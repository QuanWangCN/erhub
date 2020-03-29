#import sys
#print(sys.version)
import tkinter as tk

HEIGHT = 600
WIDTH = 1000

def radCall():
    if radVar.get() == 1: print(1)

root=tk.Tk()
canvas =tk. Canvas(root, height =HEIGHT, width =WIDTH)
canvas.pack()

frame1= tk.Frame(root, bg='blue')
frame1.place(relx=0.05, rely=0.05, relwidth=0.9, relheight=0.1)
l1= tk.Label(frame1, text = "Two Birds on the ??")
l1.place(relx=0.05,rely=0.05,relwidth=0.9, relheight=0.9)

frame2= tk.Frame(root, bg='blue')
frame2.place(relx=0.05, rely=0.2, relwidth=0.9, relheight=0.6)
radVar=tk.IntVar()
rb21=tk.Radiobutton(frame2,variable=radVar,value=1,text="Tree",command=radCall)
rb21.place(relx=0.05,rely=0.05,relwidth=0.9, relheight=0.25)
rb22=tk.Radiobutton(frame2,variable=radVar,value=2,text="Dog",command=radCall)
rb22.place(relx=0.05,rely=0.35,relwidth=0.9, relheight=0.25)
rb23=tk.Radiobutton(frame2,variable=radVar,value=3,text="King",command=radCall)
rb23.place(relx=0.05,rely=0.65,relwidth=0.9, relheight=0.25)

root.mainloop()

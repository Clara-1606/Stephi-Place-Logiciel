from tkinter import * #Importe Tkinter pour l'interface graphique
def fetch():
    print list.get(ACTIVE)
root = Tk()
list = Listbox(root)
list.pack(side=TOP)
Button(root, text='fetch', command=fetch).pack()
for index in range(10):
    list.insert(index, 'ligne-' + str(index))

root.mainloop()

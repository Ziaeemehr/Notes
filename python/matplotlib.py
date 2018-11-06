Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2016-08-27T13:08:00+04:30

====== matplotlib ======
Created Saturday 27 August 2016
**How to remove the box of the legend?**
//plt.legend(frameon=False)//
**How to change the color of the border of the legend box?**
//leg = plt.legend()//
//leg.get_frame().set_edgecolor('b')//
**How to remove only the border of the box of the legend?**
//leg = plt.legend()//
//leg.get_frame().set_linewidth(0.0)//

== legent, xlabel, ylabel, xlim, ylim, save ==
//plt.figure()//
//plt.plot(t,sol[:,0],'-',label='Voltage')//
//legend = plt.legend(loc='upper right', frameon=False)//
//plt.xlabel('time(ms)')//
//plt.savefig('V.eps')//
plt.xlim(xmin,xmax)
//plt.figure()//
//plt.plot(t,sol[:,1],'-',label='m')//
//plt.plot(t,sol[:,2],'-',label='n')//
//plt.plot(t,sol[:,3],'-',label='h')//
//legend = plt.legend(loc='upper left', frameon=False)//
//plt.xlabel('time(ms)')//
//plt.savefig('nmh.eps')//
//plt.show()//


== matplotlib 3d view angle ==
ax2.view_init(elev=ele, azim=azm)

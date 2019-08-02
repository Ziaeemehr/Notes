# Content-Type: text/x-zim-wiki
# Wiki-Format: zim 0.4
# Creation-Date: 2018-11-06T09:45:40+03:30

# ====== NEST ======
# Created Tuesday 06 November 2018

# Hello Renew,

# Now replied to the list ;)

# The small work connectivity 'kernels' in your examples do not exist as 
# NEST intrinsic functionality.

# But you can use outside code to generate connections: Generate the 
# graphs, map the vertices to neuron ids. The edges in your graph are now 
# the connections between the different neurons.

# Pseudo code:

import numpy
from apgl.graph import *
from apgl.generator.SmallWorldGenerator import SmallWorldGenerator

k = 2
p = 0.1
nr_neurons = 100
graph = SparseGraph(VertexList(neurons , 1))
generator = SmallWorldGenerator(p, k)
graph = generator.generate(graph)

import nest
....
neuronpop = nest.Create("iaf_psc_alpha", neurons , params=ndict)

for edge in graph:
	from_idx = edge.from  # or some other member
	to_idx = edge.to

	nest.Connect([neuronpop[from_idx]], [neuronpop[to_idx]],
					 "one_to_one", syn_spec={"weight":20.0, "delay":1.0})




# This one_to_on approach should work to networks of say a 1000 neurons. 
# You can speed up by collecting all outgoing from indexes and connecting 
# with all_to_one.

# Succes!

# Wouter

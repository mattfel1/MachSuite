#!/bin/python

import fnmatch
import os

latencies = []

rootdir = os.getcwd()
algs = []
for root, subFolders, files in os.walk(rootdir):
	if ("/sim/" in root):
		for f in files:
			this_latency = "NA"
			path_array = root.split("/")
			path_start = path_array.index("machsuite")
			this_alg = "_".join(path_array[path_start+1:path_start+3])
			# Look for sim results
			if ("cosim.rpt" in f):
				with open(os.path.join(root, f), 'r') as fin:
					for i, line in enumerate(fin):
						line_array = line.split("|")
						if (len(line_array) == 10):
							if ("Verilog" in line_array[1]):
								this_latency = line_array[4].replace(" ","")

				# Make sure we have data on every property
				if ("NA" in this_latency or False):
					print "No latency for %s" % this_alg

				# Append all data
				algs.append(this_alg)
				latencies.append(this_latency)

periods = [0] * len(algs)
lut_raws = [0] * len(algs)
ff_raws = [0] * len(algs)
dsp_raws = [0] * len(algs)
mem_raws = [0] * len(algs)

# Look for synth results
for root, subFolders, files in os.walk(rootdir):
	if ("/syn/report" in root):
		for f in files:
			this_latency = "NA"
			path_array = root.split("/")
			path_start = path_array.index("machsuite")
			this_alg = "_".join(path_array[path_start+1:path_start+3])
			if (".rpt" in f):
				mem_table = 0
				lut_table = 0
				summary = 0
				clock = 0
				with open(os.path.join(root, f), 'r') as fin:
					for i, line in enumerate(fin):
						line_array = line.split("|")

						# Set table entry flags
						if (len(line_array) == 1) and ("Utilization Estimates" in line_array[0]):
							summary = 1
						# if (len(line_array) == 1 and ("Memory:" in line_array[0]) ):
						# 	mem_table = 1
						if (len(line_array) == 1 and ("Timing (ns)" in line_array[0]) ):
							clock = 1

						# Collect data based on current table
						if (summary == 1 and len(line_array) == 7 and "Total" in line_array[1]):
							summary = 0
							this_id = algs.index(this_alg)
							bram = int(line_array[2].strip())
							dsp = int(line_array[3].strip())
							ff = int(line_array[4].strip())
							lut = int(line_array[5].strip())

							lut_raws[this_id] = lut_raws[this_id] + lut
							mem_raws[this_id] = mem_raws[this_id] + bram
							dsp_raws[this_id] = dsp_raws[this_id] + dsp
							ff_raws[this_id] = ff_raws[this_id] + ff

						if (clock == 1 and len(line_array) == 6 and "ap_clk" in line_array[1]):
							this_id = algs.index(this_alg)
							periods[this_id] = float(line_array[3].strip())
						# if ((mem_table == 1) and (len(line_array) == 11) and ("Total" in line_array[1])):
						# 	mem_table = 0
						# 	print line_array
						# if (len(line_array) == 10):
						# 	if ("Verilog" in line_array[1]):
			# 					this_latency = line_array[4].replace(" ","")

			# 	# Make sure we have data on every property
			# 	if ("NA" in this_latency or False):
			# 		print "No latency for %s" % this_alg
			# 	# Append all data
			# 	algs.append(this_alg)
			# 	latencies.append(this_latency)


print "%18s\t%s\t%s\t%s\t%s\t%s\t%s" % ("ALGORITHM", "LATENCY", "PERIOD", "MEM", "DSP", "LUT", "FF")
print "---------------------------------------------------------------------------------------"
for i in range(0, len(algs)):
	print "%18s\t%s\t%s\t%s\t%s\t%s\t%s" % (algs[i], latencies[i], periods[i], mem_raws[i], dsp_raws[i], lut_raws[i], ff_raws[i])

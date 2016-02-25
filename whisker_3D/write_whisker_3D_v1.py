#!/usr/bin/env python
# we add full path of the file
# version 3: command-line argument 05/22/2015
import sys
import os
# we write dump data from ind1 to ind2
def write_dump(ind1, ind2, interval,cur_path):
# use if// visit_dump.50000/summary.samrai
	amin=ind1
	amax=ind2+1
	x=amin
	width=5
	f = open('newdump.visit', 'w')
	str_pre=cur_path + '/viz_IB3d/' +'visit_dump.'
	str_back='/summary.samrai\n'
	for x in range(amin,amax,interval):
		str_s=str(x).zfill(width)
		str_line=str_pre+str_s+str_back
		f.write(str_line)
		

	#else:
	
	f.close()
		
	return('success:dump')
def write_lag(ind1, ind2, interval,cur_path):
#lag_data.cycle_050000/lag_data.cycle_050000.summary.silo
	amin=ind1
	amax=ind2+1
	x=amin
	width=6
	f = open('newlag.visit', 'w')
	str_pre1=cur_path + '/viz_IB3d/'+'beamoutput'
	str_pre2='.ex2_'
	str_back='.gmv\n'
	for x in range(amin,amax,interval):
		str_s=str(x).zfill(width)
		str_line=str_pre1+str_pre2+str_s+str_back
		f.write(str_line)
		

	#else:
	
	f.close()
		
	return('success:lag_data')

if __name__ == "__main__":	
    # command-line argument
    print '++++ running: ', sys.argv
    my_argv=sys.argv[1:]
    alen=len(my_argv)
    if (alen<3):
	print '++++ please give 3 integers:'
	print '++++ start_num, interval, end_num'
    #min_ind=0
    #max_ind=35700
    #interval=300
    else:
        min_ind=int(my_argv[0])
        interval=int(my_argv[1])
        max_ind=int(my_argv[2])
	cur_path =os.getcwd();
    	state = write_dump(min_ind,max_ind,interval,cur_path)
    	print "state:dumpfile ", state
    	state = write_lag(min_ind,max_ind,interval,cur_path)
    	print "state:dumpfile ", state

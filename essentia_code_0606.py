#!/usr/bin/env python
#-*-coding:UTF-8-*-
#import commands  
import os
import numpy as np 
s = os.sep
root_path ="/media/disk1/music_segmention_40s" + s 
print(root_path)
#obj_path="/home/wxl/分类音频/风格/style-result" + s 
#print(obj_path)
essentia_path="/home/wxl/下载/essentia-extractors-v2.1_beta2"+s
print(essentia_path)
#essentia_main=os.path.join(essentia_path,'streaming_extractor')
essentia_main=essentia_path+"streaming_extractor"
print(essentia_main)
'''
rootdir = os.getcwd() 
print(rootdir)
'''
#os.system('essentia_main /home/wxl/musics/waitingforyoubb.mp3 tttest192.txt') 
#os.system("/home/wxl/下载/essentia-extractors-v2.1_beta2/streaming_extractor /home/wxl/musics/waitingforyoubb.mp3 tttest192.txt") 
for (rt, dirs, files) in os.walk(root_path):
	for f in files:	
		#print(rt)
		#print(rt)
		#print(dirs)
		#print(files)
		#print(f)
		fname = os.path.splitext(f)
		#print(fname)
		#new = fname[0] + 'b' + fname[1]
		#new = fname[0] + 'b' + fname[1]
		if fname[1] == ".mp3":
			print(rt)
			new_filename = fname[0] + ".yaml"
			#new_filename=str('"'+new_filename+'"')
			obj_path=rt +s +'results'
			if not os.path.isdir(obj_path):
				os.makedirs(obj_path)
			print(obj_path)
			#print(new_filename)
			#print(os.path.join(obj_path,new_filename))
			#os.rename(os.path.join(rt,f),os.path.join(rt,new))
			#print(os.path.join(rt,f))
			#print(str(os.path.join(rt,f)))
			#print(str(os.path.join(obj_path,new_filename)))
			#os.system("/home/wxl/下载/essentia-extractors-v2.1_beta2/streaming_extractor os.path.join(rt,f) os.path.join(obj_path,new_filename)")
			#s.system("/home/wxl/下载/essentia-extractors-v2.1_beta2/streaming_extractor /home/wxl/musics/waitingforyou.mp3 tttest191.txt")
			new_filepath=str('"'+os.path.join(rt,f)+'"')
			#obj_path2=rt +'results'
			new_filename=str('"'+os.path.join(obj_path,new_filename+'"'))
			#print(new_filepath)
			#print("/home/wxl/下载/essentia-extractors-v2.1_beta2/streaming_extractor  %s %s" %(new_filepath, new_filename))
			os.system("/home/wxl/下载/essentia-extractors-v2.1_beta2/streaming_extractor  %s %s" %(new_filepath, new_filename))
		elif fname[1] == ".wav":
			#print(rt)
			#new_filename = fname[0] + ".txt"
			new_filename = fname[0] + ".yaml"
			obj_path=rt + s +'results'
			if not os.path.isdir(obj_path):
				os.makedirs(obj_path)
			print(obj_path)
			#print(new_filename)
			#print(os.path.join(obj_path,new_filename))
			#os.rename(os.path.join(rt,f),os.path.join(rt,new))
			#print(os.path.join(rt,f))
			#print(str(os.path.join(rt,f)))
			#print(str(os.path.join(obj_path,new_filename)))
			new_filepath=str('"'+os.path.join(rt,f)+'"')
			new_filename=str('"'+os.path.join(obj_path,new_filename+'"'))
			#os.system("/home/wxl/下载/essentia-extractors-v2.1_beta2/streaming_extractor os.path.join(rt,f) os.path.join(obj_path,new_filename)")
			#s.system("/home/wxl/下载/essentia-extractors-v2.1_beta2/streaming_extractor /home/wxl/musics/waitingforyou.mp3 tttest191.txt")
			#print(os.path.join(rt,f))
			os.system("/home/wxl/下载/essentia-extractors-v2.1_beta2/streaming_extractor  %s %s" %(new_filepath, new_filename))

#os.system("/home/wxl/下载/essentia-extractors-v2.1_beta2/streaming_extractor /home/wxl/musics/waitingforyou.mp3 tttest191.txt") 

'''
# coding:utf-8
import sys, os


s = os.sep
root = "f:" + s + "Install" + s + "OLD" + s


for rt, dirs, files in os.walk(root):
for f in files:
fname = os.path.splitext(f)
if fname[1] == ".js":
print(root + rt + s + f)
os.chdir(rt + s)
os.remove(f)
print(f)
elif fname[1] == ".css":
os.chdir(rt + s)
os.remove(rt + s + f)
print(f)
'''

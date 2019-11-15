#!/usr/bin/python3

import cv2 as cv
import os
import argparse


mean = [104, 117, 123]
parser = argparse.ArgumentParser()
parser.add_argument("-p", "--path", required=True,help="The images folder path for checking.")
args = parser.parse_args()
fpath = args.path

cvNet = cv.dnn.readNetFromCaffe('./model/nsfw.pbtxt','./model/nsfw.model')


for f in os.listdir(fpath):
    fp =  fpath+"/"+f
    try:
        image = cv.imread(fp)
    except:
        continue
    image = cv.resize(image, (224,224) )
    blob = cv.dnn.blobFromImage (image, 1, (224,224),mean,True, crop=False)
    cvNet.setInput(blob)
    detections = cvNet.forward()
    d = detections[0]
    print("%s    %0.2f,%0.2f" %(f, d[0],d[1] )  )






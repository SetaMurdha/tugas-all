def TampilHistogram(gambar):
    plt.hist(gambar.ravel(),256,[0,256])
    plt.show()

import cv2
import numpy as np
from matplotlib import pyplot as plt

# Baca Gambar
img = cv2.imread('Images/UjiThres.jpg',0)

# Ubah jadi greyscale
img1 = cv2.cvtColor(img, cv2.COLOR_BAYER_BG2GRAY)

#Tampil gambar awal
cv2.imshow('Gambar Original',img1)
TampilHistogram(img1)

NilaiMax = np.max(img1)
NilaiMin = np.min(img1)

#Proses Thresholding Gambar
NilaiMedian = (NilaiMax+NilaiMin)/2

for i in range(img1.shape[0]):
    for j in range(img1.shape[1]):
        if(img1[i][j]>=NilaiMedian):
            img1[i][j] = 255
        else:
            img1[i][j] = 0

TampilHistogram(img1)

#Tampilkan gambar
cv2.imshow('Thresholding',img1)
cv2.waitKey(0)

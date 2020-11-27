def TampilHistogram(gambar):
    plt.hist(gambar.ravel(),256,[0,256])
    plt.show()

import cv2
import numpy as np
from matplotlib import pyplot as plt

# Baca Gambar
img = cv2.imread('Images/UjiA.jpg',0)

# Ubah jadi greyscale
img1 = cv2.cvtColor(img, cv2.COLOR_BAYER_BG2GRAY)

#Tampil gambar awal
cv2.imshow('Gambar Original',img1)
TampilHistogram(img1)

# Tampung Array
Tampung = np.zeros((img1.shape[0],img1.shape[1]),dtype = 'uint8')

#Mencari intensitas maksimum dan minimum
NilaiMax = np.max(img1)
NilaiMin = np.min(img1)

#Proses Stretching Gambar
for i in range(img1.shape[0]):
    for j in range(img1.shape[1]):
        Tampung[i,j] = 255*img1[i,j]/(NilaiMax-NilaiMin)

TampilHistogram(Tampung)

#Tampilkan gambar
cv2.imshow('Hasil Stretching',Tampung)

cv2.waitKey(0)

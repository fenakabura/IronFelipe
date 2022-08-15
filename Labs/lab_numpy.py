#1
import numpy as np

#2
x = np.zeros(10)
#print(x)

#3
x[4] = 1
#print(x)

#4
x = np.arange(10, 50)
#print(x)

#5
x = np.arange(0, 9).reshape(3,3)
#print(x)

#6
a = [1, 2, 0, 0, 4, 0]
x = np.nonzero(a)
#print(x)

#7
x = np.eye(3,3)
#print(x)

#8
x = np.random.random((3, 3, 3))
#print(x)

#9
x = np.random.random((10, 10))
xmin, xmax = x.min(), x.max()
#print(xmin, xmax)

#10
x = np.random.random(30)
x = np.mean(x)
#print(x)

#11
x = np.random.random((5,5))
x = np.diag([1, 2, 3, 4])
#print(x)

#12
x = np.random.random((3,3))
xmax, xmin = x.max(), x.min()
x = (x - xmin)/(xmax/xmin)
#print(x)

#13
ar1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
ar2 = [5, 6, 7, 8, 9, 10, 11, 12, 13]
x = np.intersect1d(ar1, ar2)
#print(x)

#14
x = np.random.random(10)
x = np.sort(x)
#print(x)

#15
x = np.random.random(10)
x[x.argmax()] = 0

#16
x = np.random.rand(5, 10)
y = x - x.mean(axis=1, keepdims=True)
#print(y)

#17
arr = np.arange(10000)
np.random.shuffle(arr)
n = 5
sorted_index_array = np.argsort(arr)
sorted_array = arr[sorted_index_array]
rslt = sorted_array[-n : ]
#print("{} largest value:".format(n), rslt[0])

#18
x = np.random.random((5, 3))
np.where(x > 4, x**2, x)
#print(y)


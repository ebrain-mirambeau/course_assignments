#f = open('/Users/ebrain_mirambeau/Dropbox/Algorithms/Unit 1/IntegerArray.txt')
f = open('/Users/ebrain_mirambeau/Dropbox/Algorithms/Unit 1/test.txt')
list_of_num = [int(line.strip('\n')) for line in f.readlines()]

def merge(list_a, list_b): # count and merged_array get reset at each recursive call
   #print (list_a, list_b)
   count = 0
   merged_array = []
   
   while len(list_a) > 0 and len(list_b) > 0:
      
      if list_a[0] <= list_b[0]:
         merged_array.extend([list_a[0]])
         print(merged_array)
         list_a = list_a[1:] 
         

      else:
         count += len(list_a)
         merged_array.extend([list_b[0]])
         print(merged_array)
         list_b = list_b[1:] 
         
   
   return (count, merged_array + list_a + list_b)

def mergesort(array):
   if len(array) < 2:
      return (0, array)
   else:
      mid = len(array)//2
      (count1, array1) = mergesort(array[:mid])
      (count2, array2) = mergesort(array[mid:])
      (count, merged_array) = merge(array1, array2)
      return (count+count1+count2, merged_array)


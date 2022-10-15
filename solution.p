#User function Template for python3
from math import sqrt
class Solution:        
    def primeRange(self,M,N):
        #code here
       ans=[]
       M=int(M)
       N=int(N)
       count=0
      if M==1:
          M+=1
      if M==0:
          M=2
       for i in range(M,N+1):
           count=0
           for j in range(2,int(sqrt(i))+1):
               if i%j==0:
                   count+=1
                   break
           if count==0:
               ans.append(i)
       return ans


#{ 
 # Driver Code Starts
#Initial Template for Python 3

import math

if __name__=='__main__':
    t=int(input())
    for _ in range(t):
        M,N=map(int,input().strip().split(" "))
        ob=Solution()
        ans=ob.primeRange(M,N)
        for i in ans:
            print(i,end=" ")
        print()    
# } Driver Code Ends

-- opt-bfc output
local t = {}
for i=1,65536,1 do
    t[i] = 0
end

local p = 1
t[p]=t[p]+13
t[p+1]=t[p+1]+t[p]*2
t[p+4]=t[p+4]+t[p]*5
t[p+5]=t[p+5]+t[p]*2
t[p+6]=t[p+6]+t[p]
t[p]=0
p=p+5
t[p]=t[p]+6
p=p+1
t[p]=t[p]-3
p=p+10
t[p]=t[p]+15
while(t[p]~=0) do while(t[p]~=0) do p=p+9
end
t[p]=t[p]+1
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]-1
end
t[p]=t[p]+1
while(t[p]~=0) do p=p+8
t[p]=0
p=p+1
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+8
t[p]=0
t[p]=t[p]+1
p=p-7
t[p]=t[p]+5
while(t[p]~=0) do t[p]=t[p]-1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p+9
end
p=p+7
t[p]=t[p]+1
p=p+27
t[p]=t[p]+1
p=p-17
while(t[p]~=0) do p=p-9
end
p=p+3
t[p]=0
t[p]=t[p]+1
while(t[p]~=0) do p=p+6
while(t[p]~=0) do p=p+7
t[p]=0
p=p+2
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+7
t[p]=0
t[p]=t[p]+1
p=p-6
t[p]=t[p]+4
while(t[p]~=0) do t[p]=t[p]-1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p+9
end
p=p+6
t[p]=t[p]+1
p=p-6
t[p]=t[p]+7
while(t[p]~=0) do t[p]=t[p]-1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p+9
end
p=p+6
t[p]=t[p]+1
p=p-16
while(t[p]~=0) do p=p-9
end
p=p+3
while(t[p]~=0) do t[p]=0
p=p+6
while(t[p]~=0) do p=p+7
t[p-6]=t[p-6]+t[p]
t[p]=0
p=p-6
t[p+1]=t[p+1]+t[p]
t[p+4]=t[p+4]+t[p]
t[p+6]=t[p+6]+t[p]
t[p]=0
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+8
t[p-7]=t[p-7]+t[p]
t[p]=0
p=p-7
t[p+2]=t[p+2]+t[p]
t[p+5]=t[p+5]+t[p]
t[p+7]=t[p+7]+t[p]
t[p]=0
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+7
t[p-7]=t[p-7]+t[p]
t[p]=0
p=p-7
t[p+5]=t[p+5]+t[p]
t[p+7]=t[p+7]+t[p]
t[p]=0
p=p+9
t[p]=t[p]+15
while(t[p]~=0) do while(t[p]~=0) do p=p+9
end
t[p]=t[p]+1
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]-1
end
t[p]=t[p]+1
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+1
t[p]=t[p]-1
p=p+4
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-5
while(t[p]~=0) do t[p]=t[p]-1
p=p+2
t[p-2]=t[p-2]+t[p]
t[p]=0
p=p-2
t[p+2]=t[p+2]+t[p]
t[p+4]=t[p+4]+t[p]
t[p]=0
t[p]=t[p]+1
p=p+9
end
p=p-8
while(t[p]~=0) do p=p-9
end
end
p=p+9
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-10
end
p=p+1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p+1
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+4
while(t[p]~=0) do t[p]=t[p]-1
p=p-4
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-6]=t[p-6]+t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+4
end
p=p-3
t[p+3]=t[p+3]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p-9
end
p=p+9
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+1
t[p]=t[p]-1
p=p+5
t[p-5]=t[p-5]+t[p]
t[p]=0
p=p-5
while(t[p]~=0) do t[p]=t[p]-1
p=p+5
t[p]=t[p]+1
p=p-6
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p-3]=t[p-3]+t[p]
t[p]=0
p=p-3
t[p+3]=t[p+3]+t[p]
t[p+4]=t[p+4]+t[p]
t[p]=0
t[p]=t[p]+1
p=p+9
end
p=p-8
while(t[p]~=0) do p=p-9
end
end
p=p+9
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+2
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-11
end
p=p+2
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-2
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p+1
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+4
while(t[p]~=0) do t[p]=t[p]-1
p=p-4
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-6]=t[p-6]+t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+4
end
p=p-3
t[p+3]=t[p+3]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p-9
end
p=p+9
while(t[p]~=0) do p=p+4
t[p-36]=t[p-36]+t[p]
t[p]=0
p=p+5
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]+15
while(t[p]~=0) do while(t[p]~=0) do p=p+9
end
p=p-9
t[p]=t[p]-1
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]-1
end
t[p]=t[p]+1
p=p+21
t[p]=t[p]+1
p=p-3
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+3
t[p-3]=t[p-3]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]-1
p=p+1
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-13
while(t[p]~=0) do p=p-9
end
p=p+4
t[p]=0
t[p]=t[p]+1
p=p+5
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+4
t[p-4]=t[p-4]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]-1
p=p-1
t[p-3]=t[p-3]+t[p]
t[p]=0
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]+1
p=p-12
while(t[p]~=0) do p=p-9
end
p=p+3
t[p]=0
t[p]=t[p]+1
p=p+6
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=0
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p-1
while(t[p]~=0) do p=p+9
end
p=p-8
end
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p-7
t[p+1]=t[p+1]+t[p]
t[p+4]=t[p+4]-t[p]
t[p]=0
p=p+9
t[p]=t[p]+26
p=p+2
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-2
t[p]=0
p=p-2
end
p=p+2
while(t[p]~=0) do p=p-7
t[p]=t[p]+1
p=p-1
while(t[p]~=0) do t[p]=t[p]-1
p=p-1
t[p]=t[p]+1
p=p+4
t[p]=t[p]+1
p=p-2
t[p]=0
end
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p-2
t[p+1]=t[p+1]+t[p]
t[p+4]=t[p+4]-t[p]
t[p]=0
p=p+3
end
p=p+13
while(t[p]~=0) do p=p+2
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+5
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+3
t[p]=0
p=p+6
while(t[p]~=0) do p=p+5
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
t[p+1]=t[p+1]+t[p]
t[p+4]=t[p+4]+t[p]
t[p]=0
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+2
t[p-9]=t[p-9]+t[p]
t[p]=0
p=p+7
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]+15
while(t[p]~=0) do while(t[p]~=0) do p=p+9
end
t[p]=t[p]+1
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]-1
end
t[p]=t[p]+1
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+1
t[p]=t[p]-1
p=p+5
t[p-5]=t[p-5]+t[p]
t[p]=0
p=p-5
while(t[p]~=0) do t[p]=t[p]-1
p=p+5
t[p]=t[p]+1
p=p-6
while(t[p]~=0) do t[p]=t[p]-1
p=p+2
t[p-2]=t[p-2]+t[p]
t[p]=0
p=p-2
t[p+2]=t[p+2]+t[p]
t[p+3]=t[p+3]+t[p]
t[p]=0
t[p]=t[p]+1
p=p+9
end
p=p-8
while(t[p]~=0) do p=p-9
end
end
p=p+9
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-10
end
p=p+1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p+1
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+3
while(t[p]~=0) do t[p]=t[p]-1
p=p-3
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-7]=t[p-7]+t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+3
end
p=p-2
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p-9
end
p=p+9
while(t[p]~=0) do p=p+6
t[p-5]=t[p-5]+t[p]
t[p]=0
p=p-5
t[p+1]=t[p+1]+t[p]
t[p+5]=t[p+5]+t[p]
t[p]=0
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+1
t[p]=t[p]-1
p=p+5
t[p-5]=t[p-5]+t[p]
t[p]=0
p=p-5
while(t[p]~=0) do t[p]=t[p]-1
p=p+5
t[p]=t[p]+1
p=p-6
while(t[p]~=0) do t[p]=t[p]-1
p=p+2
t[p-2]=t[p-2]+t[p]
t[p]=0
p=p-2
t[p+2]=t[p+2]+t[p]
t[p+4]=t[p+4]+t[p]
t[p]=0
t[p]=t[p]+1
p=p+9
end
p=p-8
while(t[p]~=0) do p=p-9
end
end
p=p+9
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-10
end
p=p+1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p+1
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+4
while(t[p]~=0) do t[p]=t[p]-1
p=p-4
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-6]=t[p-6]+t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+4
end
p=p-3
t[p+3]=t[p+3]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p-9
end
p=p+9
while(t[p]~=0) do p=p+4
t[p-36]=t[p-36]+t[p]
t[p]=0
p=p+5
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+3
t[p-36]=t[p-36]+t[p]
t[p]=0
p=p+6
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]+15
while(t[p]~=0) do while(t[p]~=0) do p=p+9
end
p=p-9
t[p]=t[p]-1
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]-1
end
t[p]=t[p]+1
while(t[p]~=0) do p=p+8
t[p-7]=t[p-7]+t[p]
t[p]=0
p=p-7
t[p+1]=t[p+1]+t[p]
t[p+7]=t[p+7]+t[p]
t[p]=0
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+6
t[p]=0
p=p+3
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+4
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-5]=t[p-5]+t[p]
t[p]=0
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p-6
t[p+4]=t[p+4]+t[p]*2
t[p+5]=t[p+5]+t[p]
t[p]=0
p=p+5
t[p-5]=t[p-5]+t[p]
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+1
t[p]=t[p]+1
p=p+1
end
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p-5
t[p+5]=t[p+5]+t[p]
t[p]=0
p=p+6
t[p]=0
p=p-6
t[p]=t[p]+1
p=p+4
t[p-4]=t[p-4]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]-1
p=p+5
while(t[p]~=0) do p=p+2
t[p-2]=t[p-2]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-2
while(t[p]~=0) do t[p]=t[p]-1
p=p+2
t[p]=t[p]-1
p=p+1
t[p-3]=t[p-3]+t[p]
t[p]=0
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]+1
p=p-12
while(t[p]~=0) do p=p-9
end
p=p+3
t[p]=0
t[p]=t[p]+1
p=p+6
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+3
t[p-3]=t[p-3]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]-1
p=p-1
t[p-2]=t[p-2]+t[p]
t[p]=0
p=p-2
while(t[p]~=0) do t[p]=t[p]-1
p=p+2
t[p]=t[p]+1
p=p-11
while(t[p]~=0) do p=p-9
end
p=p+4
t[p]=0
t[p]=t[p]+1
p=p+5
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=0
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p-1
while(t[p]~=0) do p=p+9
end
p=p-8
end
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+4
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p+5
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+2
t[p-2]=t[p-2]-t[p]
t[p]=0
p=p-2
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p+8
end
p=p-8
t[p]=t[p]+1
p=p-1
while(t[p]~=0) do p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p+5
t[p]=t[p]+1
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]-1
p=p-14
t[p]=t[p]+1
p=p+11
t[p+3]=t[p+3]+t[p]
t[p]=0
p=p-1
end
p=p+1
t[p+3]=t[p+3]-t[p]
t[p-11]=t[p-11]+t[p]
t[p]=0
p=p-2
end
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-3
t[p+3]=t[p+3]-t[p]
t[p-11]=t[p-11]+t[p]
t[p]=0
p=p-1
end
p=p+1
t[p+3]=t[p+3]+t[p]
t[p]=0
p=p-12
end
p=p+4
t[p]=0
p=p-4
end
p=p+3
t[p-3]=t[p-3]+t[p]
t[p]=0
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]+1
p=p+6
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+8
end
p=p-8
t[p]=t[p]+1
p=p-1
while(t[p]~=0) do p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p+5
t[p]=t[p]+1
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]-1
p=p-14
t[p]=t[p]+1
p=p+10
t[p+4]=t[p+4]+t[p]
t[p]=0
p=p+1
end
p=p-1
t[p+4]=t[p+4]-t[p]
t[p-10]=t[p-10]+t[p]
t[p]=0
p=p-1
end
p=p+2
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]+1
p=p-4
t[p+4]=t[p+4]-t[p]
t[p-10]=t[p-10]+t[p]
t[p]=0
p=p+1
end
p=p-1
t[p+4]=t[p+4]+t[p]
t[p]=0
p=p-11
end
p=p+6
t[p]=t[p]+1
p=p-6
end
end
p=p+4
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p+5
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p+5
t[p]=t[p]+1
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]-1
p=p-14
t[p]=t[p]+1
p=p+11
t[p+3]=t[p+3]+t[p]
t[p]=0
p=p-1
end
p=p+1
t[p+3]=t[p+3]-t[p]
t[p-11]=t[p-11]+t[p]
t[p]=0
p=p-2
end
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-3
t[p+3]=t[p+3]-t[p]
t[p-11]=t[p-11]+t[p]
t[p]=0
p=p-1
end
p=p+1
t[p+3]=t[p+3]+t[p]
t[p]=0
p=p-12
end
end
p=p+1
t[p]=0
p=p+2
t[p]=0
p=p+1
t[p]=0
p=p+5
while(t[p]~=0) do p=p+2
t[p]=0
p=p+1
t[p]=0
p=p+6
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+5
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
t[p+1]=t[p+1]+t[p]
t[p+4]=t[p+4]+t[p]
t[p]=0
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]+15
while(t[p]~=0) do while(t[p]~=0) do p=p+9
end
t[p]=t[p]+1
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]-1
end
t[p]=t[p]+1
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+1
t[p]=t[p]-1
p=p+4
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-5
while(t[p]~=0) do t[p]=t[p]-1
p=p+2
t[p-2]=t[p-2]+t[p]
t[p]=0
p=p-2
t[p+2]=t[p+2]+t[p]
t[p+3]=t[p+3]+t[p]
t[p]=0
t[p]=t[p]+1
p=p+9
end
p=p-8
while(t[p]~=0) do p=p-9
end
end
p=p+9
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-10
end
p=p+1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p+1
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+3
while(t[p]~=0) do t[p]=t[p]-1
p=p-3
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-7]=t[p-7]+t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+3
end
p=p-2
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p-9
end
p=p+9
while(t[p]~=0) do p=p+3
t[p-36]=t[p-36]+t[p]
t[p]=0
p=p+6
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+5
t[p]=0
p=p+4
t[p]=t[p]+15
while(t[p]~=0) do while(t[p]~=0) do p=p+9
end
p=p-9
t[p]=t[p]-1
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]-1
end
t[p]=t[p]+1
while(t[p]~=0) do p=p+3
t[p-3]=t[p-3]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]-1
p=p+1
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-13
while(t[p]~=0) do p=p-9
end
p=p+4
t[p]=0
t[p]=t[p]+1
p=p+5
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+4
t[p-4]=t[p-4]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]-1
p=p-1
t[p-3]=t[p-3]+t[p]
t[p]=0
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]+1
p=p-12
while(t[p]~=0) do p=p-9
end
p=p+3
t[p]=0
t[p]=t[p]+1
p=p+6
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=0
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p-1
while(t[p]~=0) do p=p+9
end
p=p-8
end
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+3
t[p-3]=t[p-3]+t[p]
t[p]=0
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]+1
p=p+6
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+3
t[p-3]=t[p-3]-t[p]
t[p]=0
p=p-3
t[p+3]=t[p+3]+t[p]
t[p]=0
p=p+8
end
p=p-8
t[p]=t[p]+1
p=p-1
while(t[p]~=0) do p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p+1
t[p]=t[p]+1
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p-1
t[p]=t[p]-1
p=p-10
t[p]=t[p]+1
p=p+12
t[p-2]=t[p-2]+t[p]
t[p]=0
p=p-1
end
p=p+1
t[p-2]=t[p-2]-t[p]
t[p-12]=t[p-12]+t[p]
t[p]=0
p=p-3
end
p=p+2
while(t[p]~=0) do t[p]=t[p]-1
p=p-1
t[p]=t[p]+1
p=p+2
t[p-2]=t[p-2]-t[p]
t[p-12]=t[p-12]+t[p]
t[p]=0
p=p-1
end
p=p+1
t[p-2]=t[p-2]+t[p]
t[p]=0
p=p-13
end
end
p=p+4
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p+5
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+2
t[p-2]=t[p-2]-t[p]
t[p]=0
p=p-2
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p+8
end
p=p-8
t[p]=t[p]+1
p=p-1
while(t[p]~=0) do p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p+1
t[p]=t[p]+1
p=p+2
while(t[p]~=0) do t[p]=t[p]-1
p=p-2
t[p]=t[p]-1
p=p-10
t[p]=t[p]+1
p=p+11
t[p-1]=t[p-1]+t[p]
t[p]=0
p=p+1
end
p=p-1
t[p-1]=t[p-1]-t[p]
t[p-11]=t[p-11]+t[p]
t[p]=0
p=p-2
end
p=p+3
while(t[p]~=0) do t[p]=t[p]-1
p=p-2
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-11]=t[p-11]+t[p]
t[p]=0
p=p+1
end
p=p-1
t[p-1]=t[p-1]+t[p]
t[p]=0
p=p-12
end
p=p+5
t[p]=t[p]+1
p=p-5
end
p=p+9
while(t[p]~=0) do p=p+3
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+4
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+3
t[p]=0
p=p+1
t[p]=0
p=p+5
while(t[p]~=0) do p=p+7
t[p-6]=t[p-6]+t[p]
t[p]=0
p=p-6
t[p+2]=t[p+2]+t[p]
t[p+6]=t[p+6]+t[p]
t[p]=0
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+4
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-5]=t[p-5]+t[p]
t[p]=0
p=p+2
while(t[p]~=0) do t[p]=t[p]-1
p=p-7
t[p+4]=t[p+4]+t[p]*2
t[p+5]=t[p+5]+t[p]
t[p]=0
p=p+5
t[p-5]=t[p-5]+t[p]
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+1
t[p]=t[p]+1
p=p+2
end
p=p-2
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p-5
t[p+5]=t[p+5]+t[p]
t[p]=0
t[p]=t[p]+1
p=p+4
t[p-4]=t[p-4]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]-1
p=p+5
while(t[p]~=0) do p=p+3
t[p-3]=t[p-3]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]-1
p=p-1
t[p-2]=t[p-2]+t[p]
t[p]=0
p=p-2
while(t[p]~=0) do t[p]=t[p]-1
p=p+2
t[p]=t[p]+1
p=p-11
while(t[p]~=0) do p=p-9
end
p=p+4
t[p]=0
t[p]=t[p]+1
p=p+5
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+2
t[p-2]=t[p-2]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-2
while(t[p]~=0) do t[p]=t[p]-1
p=p+2
t[p]=t[p]-1
p=p+1
t[p-3]=t[p-3]+t[p]
t[p]=0
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]+1
p=p-12
while(t[p]~=0) do p=p-9
end
p=p+3
t[p]=0
t[p]=t[p]+1
p=p+6
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=0
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p-1
while(t[p]~=0) do p=p+9
end
p=p-8
end
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+3
t[p-3]=t[p-3]+t[p]
t[p]=0
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]+1
p=p+6
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+8
end
p=p-8
t[p]=t[p]+1
p=p-1
while(t[p]~=0) do p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-2
while(t[p]~=0) do t[p]=t[p]-1
p=p+2
t[p]=t[p]-1
p=p-13
t[p]=t[p]+1
p=p+10
t[p+3]=t[p+3]+t[p]
t[p]=0
p=p+1
end
p=p-1
t[p+3]=t[p+3]-t[p]
t[p-10]=t[p-10]+t[p]
t[p]=0
p=p-1
end
p=p+2
while(t[p]~=0) do t[p]=t[p]-1
p=p+2
t[p]=t[p]+1
p=p-3
t[p+3]=t[p+3]-t[p]
t[p-10]=t[p-10]+t[p]
t[p]=0
p=p+1
end
p=p-1
t[p+3]=t[p+3]+t[p]
t[p]=0
p=p-11
end
p=p+5
t[p]=0
p=p+2
t[p-7]=t[p-7]+t[p]
t[p]=0
p=p-7
t[p+5]=t[p+5]+t[p]
t[p+7]=t[p+7]+t[p]
t[p]=0
end
p=p+4
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p+5
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+2
t[p-2]=t[p-2]-t[p]
t[p]=0
p=p-2
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p+8
end
p=p-8
t[p]=t[p]+1
p=p-1
while(t[p]~=0) do p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]-1
p=p-13
t[p]=t[p]+1
p=p+11
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p-1
end
p=p+1
t[p+2]=t[p+2]-t[p]
t[p-11]=t[p-11]+t[p]
t[p]=0
p=p-2
end
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]+1
p=p-2
t[p+2]=t[p+2]-t[p]
t[p-11]=t[p-11]+t[p]
t[p]=0
p=p-1
end
p=p+1
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p-12
end
end
p=p+4
t[p]=0
p=p-4
end
p=p+4
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p+1
t[p]=0
p=p+2
t[p-7]=t[p-7]+t[p]
t[p]=0
p=p-7
t[p+5]=t[p+5]+t[p]
t[p+7]=t[p+7]+t[p]
t[p]=0
p=p+9
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]-1
p=p-13
t[p]=t[p]+1
p=p+11
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p-1
end
p=p+1
t[p+2]=t[p+2]-t[p]
t[p-11]=t[p-11]+t[p]
t[p]=0
p=p-2
end
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]+1
p=p-2
t[p+2]=t[p+2]-t[p]
t[p-11]=t[p-11]+t[p]
t[p]=0
p=p-1
end
p=p+1
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p-12
end
end
p=p+9
while(t[p]~=0) do p=p+2
t[p]=0
p=p+1
t[p]=0
p=p+6
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+3
t[p]=0
p=p+1
t[p]=0
p=p+5
while(t[p]~=0) do p=p+5
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
t[p+1]=t[p+1]+t[p]
t[p+4]=t[p+4]+t[p]
t[p]=0
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+6
t[p-5]=t[p-5]+t[p]
t[p]=0
p=p-5
t[p+2]=t[p+2]+t[p]
t[p+5]=t[p+5]+t[p]
t[p]=0
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]+15
while(t[p]~=0) do while(t[p]~=0) do p=p+9
end
t[p]=t[p]+1
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]-1
end
t[p]=t[p]+1
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+1
t[p]=t[p]-1
p=p+4
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-5
while(t[p]~=0) do t[p]=t[p]-1
p=p+2
t[p-2]=t[p-2]+t[p]
t[p]=0
p=p-2
t[p+2]=t[p+2]+t[p]
t[p+4]=t[p+4]+t[p]
t[p]=0
t[p]=t[p]+1
p=p+9
end
p=p-8
while(t[p]~=0) do p=p-9
end
end
p=p+9
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-10
end
p=p+1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p+1
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+4
while(t[p]~=0) do t[p]=t[p]-1
p=p-4
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-6]=t[p-6]+t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+4
end
p=p-3
t[p+3]=t[p+3]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p-9
end
p=p+9
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+1
t[p]=t[p]-1
p=p+5
t[p-5]=t[p-5]+t[p]
t[p]=0
p=p-5
while(t[p]~=0) do t[p]=t[p]-1
p=p+5
t[p]=t[p]+1
p=p-6
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p-3]=t[p-3]+t[p]
t[p]=0
p=p-3
t[p+3]=t[p+3]+t[p]
t[p+4]=t[p+4]+t[p]
t[p]=0
t[p]=t[p]+1
p=p+9
end
p=p-8
while(t[p]~=0) do p=p-9
end
end
p=p+9
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+2
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-11
end
p=p+2
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p-2
t[p]=t[p]+1
p=p+8
end
p=p-9
while(t[p]~=0) do p=p+1
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+4
while(t[p]~=0) do t[p]=t[p]-1
p=p-4
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-6]=t[p-6]+t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+4
end
p=p-3
t[p+3]=t[p+3]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p-9
end
p=p+9
while(t[p]~=0) do p=p+4
t[p-36]=t[p-36]+t[p]
t[p]=0
p=p+5
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]+15
while(t[p]~=0) do while(t[p]~=0) do p=p+9
end
p=p-9
t[p]=t[p]-1
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
t[p]=t[p]-1
end
t[p]=t[p]+1
p=p+21
t[p]=t[p]+1
p=p-3
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+3
t[p-3]=t[p-3]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]-1
p=p+1
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-13
while(t[p]~=0) do p=p-9
end
p=p+4
t[p]=0
t[p]=t[p]+1
p=p+5
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+4
t[p-4]=t[p-4]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]-1
p=p-1
t[p-3]=t[p-3]+t[p]
t[p]=0
p=p-3
while(t[p]~=0) do t[p]=t[p]-1
p=p+3
t[p]=t[p]+1
p=p-12
while(t[p]~=0) do p=p-9
end
p=p+3
t[p]=0
t[p]=t[p]+1
p=p+6
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=0
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p-1
while(t[p]~=0) do p=p+9
end
p=p-8
end
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+2
t[p]=t[p]-1
p=p+2
t[p-4]=t[p-4]+t[p]
t[p]=0
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]+1
p=p-2
t[p]=0
p=p-2
end
p=p+2
end
p=p-2
t[p]=t[p]+1
p=p+4
t[p-4]=t[p-4]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-4
while(t[p]~=0) do t[p]=t[p]-1
p=p+4
t[p]=t[p]-1
p=p-6
io.write(string.char(t[p]))
p=p+2
end
p=p+4
while(t[p]~=0) do t[p]=t[p]-1
p=p-7
io.write(string.char(t[p]))
p=p+7
end
p=p-3
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+3
while(t[p]~=0) do p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+1
t[p]=0
p=p+3
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+5
t[p]=0
p=p+4
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+1
t[p]=t[p]+11
while(t[p]~=0) do t[p]=t[p]-1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p+9
end
p=p+4
t[p]=t[p]+1
p=p+9
t[p]=t[p]+1
p=p-14
while(t[p]~=0) do p=p-9
end
p=p+7
t[p-7]=t[p-7]+t[p]
t[p]=0
p=p-7
while(t[p]~=0) do t[p]=t[p]-1
p=p+7
t[p]=t[p]+1
t[p]=0
p=p+2
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+7
t[p-6]=t[p-6]+t[p]
t[p]=0
p=p-6
while(t[p]~=0) do t[p]=t[p]-1
p=p+6
t[p]=t[p]+1
p=p-7
while(t[p]~=0) do p=p-9
end
p=p+7
t[p]=0
t[p]=t[p]+1
p=p+3
end
p=p-10
end
end
p=p+7
t[p-7]=t[p-7]+t[p]
t[p]=0
p=p-7
while(t[p]~=0) do t[p]=t[p]-1
p=p+7
t[p]=t[p]+1
p=p+2
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+4
t[p-4]=t[p-4]-t[p]
t[p]=0
p=p-4
t[p+4]=t[p+4]+t[p]
t[p]=0
p=p+8
end
p=p-2
t[p]=t[p]+1
p=p-7
while(t[p]~=0) do p=p+5
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p-14
end
p=p+9
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+1
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+7
while(t[p]~=0) do t[p]=t[p]-1
p=p-7
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-3]=t[p-3]+t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+7
end
p=p-6
t[p+6]=t[p+6]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p-9
end
p=p+7
t[p]=t[p]-1
p=p-4
t[p]=0
t[p]=t[p]+1
p=p-3
end
t[p]=t[p]+1
p=p+7
t[p-7]=t[p-7]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-7
while(t[p]~=0) do t[p]=t[p]-1
p=p+7
t[p]=t[p]-1
p=p+2
while(t[p]~=0) do p=p+5
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p+4
end
p=p-9
while(t[p]~=0) do p=p+1
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+7
while(t[p]~=0) do t[p]=t[p]-1
p=p-7
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-3]=t[p-3]+t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+7
end
p=p-6
t[p+6]=t[p+6]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p-9
end
p=p+1
t[p]=t[p]+5
while(t[p]~=0) do t[p]=t[p]-1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p+9
end
p=p+4
t[p]=t[p]+1
p=p-5
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+5
t[p-5]=t[p-5]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-5
while(t[p]~=0) do t[p]=t[p]-1
p=p+5
t[p]=t[p]-1
p=p+2
t[p-7]=t[p-7]+t[p]
t[p]=0
p=p-7
while(t[p]~=0) do t[p]=t[p]-1
p=p+7
t[p]=t[p]+1
p=p-16
while(t[p]~=0) do p=p-9
end
p=p+4
t[p]=0
t[p]=t[p]+1
p=p+5
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+7
t[p-7]=t[p-7]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-7
while(t[p]~=0) do t[p]=t[p]-1
p=p+7
t[p]=t[p]-1
p=p-2
t[p-5]=t[p-5]+t[p]
t[p]=0
p=p-5
while(t[p]~=0) do t[p]=t[p]-1
p=p+5
t[p]=t[p]+1
p=p-14
while(t[p]~=0) do p=p-9
end
p=p+3
t[p]=0
t[p]=t[p]+1
p=p+6
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=0
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p-1
while(t[p]~=0) do p=p+9
end
p=p-8
end
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+4
t[p]=0
p=p-3
t[p]=t[p]+5
while(t[p]~=0) do t[p]=t[p]-1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p+9
end
p=p+4
t[p]=t[p]-1
p=p-5
while(t[p]~=0) do p=p-9
end
end
p=p+3
end
p=p-4
io.write(string.char(t[p]))
p=p+10
while(t[p]~=0) do p=p+6
t[p]=0
p=p+3
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+1
t[p]=t[p]+10
while(t[p]~=0) do t[p]=t[p]-1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p+9
end
p=p+5
t[p]=t[p]+1
p=p+9
t[p]=t[p]+1
p=p-15
while(t[p]~=0) do p=p-9
end
p=p+8
t[p-8]=t[p-8]+t[p]
t[p]=0
p=p-8
while(t[p]~=0) do t[p]=t[p]-1
p=p+8
t[p]=t[p]+1
t[p]=0
p=p+1
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+8
t[p-7]=t[p-7]+t[p]
t[p]=0
p=p-7
while(t[p]~=0) do t[p]=t[p]-1
p=p+7
t[p]=t[p]+1
p=p-8
while(t[p]~=0) do p=p-9
end
p=p+8
t[p]=0
t[p]=t[p]+1
p=p+2
end
p=p-10
end
end
p=p+8
t[p-8]=t[p-8]+t[p]
t[p]=0
p=p-8
while(t[p]~=0) do t[p]=t[p]-1
p=p+8
t[p]=t[p]+1
p=p+1
while(t[p]~=0) do p=p+1
t[p]=t[p]+1
p=p+5
t[p-5]=t[p-5]-t[p]
t[p]=0
p=p-5
t[p+5]=t[p+5]+t[p]
t[p]=0
p=p+8
end
p=p-1
t[p]=t[p]+1
p=p-8
while(t[p]~=0) do p=p+6
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p-15
end
p=p+9
while(t[p]~=0) do p=p+9
end
p=p-9
while(t[p]~=0) do p=p+1
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+8
while(t[p]~=0) do t[p]=t[p]-1
p=p-8
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-2]=t[p-2]+t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+8
end
p=p-7
t[p+7]=t[p+7]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p-9
end
p=p+8
t[p]=t[p]-1
p=p-5
t[p]=0
t[p]=t[p]+1
p=p-3
end
t[p]=t[p]+1
p=p+8
t[p-8]=t[p-8]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-8
while(t[p]~=0) do t[p]=t[p]-1
p=p+8
t[p]=t[p]-1
p=p+1
while(t[p]~=0) do p=p+6
t[p+2]=t[p+2]+t[p]
t[p]=0
p=p+3
end
p=p-9
while(t[p]~=0) do p=p+1
t[p]=0
p=p-1
t[p]=t[p]-1
p=p+8
while(t[p]~=0) do t[p]=t[p]-1
p=p-8
t[p]=t[p]+1
p=p+1
t[p-1]=t[p-1]-t[p]
t[p-2]=t[p-2]+t[p]
t[p]=0
p=p-1
t[p+1]=t[p+1]+t[p]
t[p]=0
p=p+8
end
p=p-7
t[p+7]=t[p+7]+t[p]
t[p]=0
p=p-1
t[p]=t[p]+1
p=p-9
end
p=p+1
t[p]=t[p]+5
while(t[p]~=0) do t[p]=t[p]-1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p+9
end
p=p+5
t[p]=t[p]+1
p=p+27
t[p]=t[p]+1
p=p-6
while(t[p]~=0) do p=p-9
end
p=p+9
while(t[p]~=0) do p=p+6
t[p-6]=t[p-6]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-6
while(t[p]~=0) do t[p]=t[p]-1
p=p+6
t[p]=t[p]-1
p=p+2
t[p-8]=t[p-8]+t[p]
t[p]=0
p=p-8
while(t[p]~=0) do t[p]=t[p]-1
p=p+8
t[p]=t[p]+1
p=p-17
while(t[p]~=0) do p=p-9
end
p=p+4
t[p]=0
t[p]=t[p]+1
p=p+5
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+8
t[p-8]=t[p-8]-t[p]
t[p]=0
t[p]=t[p]+1
p=p-8
while(t[p]~=0) do t[p]=t[p]-1
p=p+8
t[p]=t[p]-1
p=p-2
t[p-6]=t[p-6]+t[p]
t[p]=0
p=p-6
while(t[p]~=0) do t[p]=t[p]-1
p=p+6
t[p]=t[p]+1
p=p-15
while(t[p]~=0) do p=p-9
end
p=p+3
t[p]=0
t[p]=t[p]+1
p=p+6
while(t[p]~=0) do p=p+9
end
p=p+1
t[p]=0
t[p]=t[p]+1
p=p-1
end
end
t[p]=t[p]+1
p=p+1
while(t[p]~=0) do t[p]=t[p]-1
p=p-1
while(t[p]~=0) do p=p+9
end
p=p-8
end
p=p+8
end
p=p-9
while(t[p]~=0) do p=p-9
end
p=p+4
t[p]=0
p=p-3
t[p]=t[p]+5
while(t[p]~=0) do t[p]=t[p]-1
t[p+9]=t[p+9]+t[p]
t[p]=0
p=p+9
end
p=p+5
t[p]=t[p]-1
p=p+27
t[p]=t[p]-1
p=p-6
while(t[p]~=0) do p=p-9
end
end
p=p+3
end

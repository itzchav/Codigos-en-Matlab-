
f=zeros(1,10+1);
f(1)=fibonacci(0,0);
f(2)=fibonacci(1,0);

for i=3:1:11
    f(i)=fibonacci(f(i-1),f(i-2));
end
f

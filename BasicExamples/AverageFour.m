num=input("number of data ");
sum=0;
average=0;
for i=1:1:num
    data = input("enter data ");
    sum=sum+data;
    if mod(i, 4) == 0
        ave = sum/4;
        sum=0;
        disp("Average is "+ave);
    else
        if i == num && mod(num, 4) ~= 0
        div=mod(i, 4);
        ave=sum/div;
        disp("Average is "+ave);
        end
    end
end

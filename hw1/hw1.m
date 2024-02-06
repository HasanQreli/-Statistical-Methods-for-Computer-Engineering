blue = [1, 2, 3, 4, 5, 6];
yellow = [1, 1, 1, 3, 3, 3, 4, 8];
red = [2, 2, 2, 2, 2, 3, 3, 4, 4, 6];


count = 0;
for i=1:1000
	rolls_blue = blue(randi([1,6],1,3));
	rolls_red = red(randi([1,10]));
	rolls_yellow = yellow(randi([1,8]));
	roll_blue = blue(randi([1,6]));
	one_each(i) = roll_blue + rolls_red + rolls_yellow;
	threeblue(i) = sum(rolls_blue);
	if threeblue(i) > one_each(i)
		count = count+1;
	end
end

fprintf("%d\n", mean(one_each));
fprintf("%d\n", mean(threeblue));
fprintf("%d\n", count/10);

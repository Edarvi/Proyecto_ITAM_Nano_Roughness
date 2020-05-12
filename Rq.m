function[Rq] = Rq(Z) %Root Means Square Average of the profile is similar in the concept of linear regression
	for i = 1:length(Z)
		Rq = sqrt((1/length(Z))*(Z(i)-Zprom(Z)).^2);
	end
end

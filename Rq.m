function[Rq] = Rq(Z) %Root Means Square Average of the profile is similar in the concept of linear regression
	for i = 1:length(Z)
		Rq = sqrt((1/length(Z))*(Z(i)-Zprom(Z)).^2); %Donde Z es el roughness o datos de la imagen del AFM en una trayectoria determinda
		% E "i" una variable para el procedimiento de la sumatoria
	end
end

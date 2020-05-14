function[Rq] = RqF(Z) %Root Means Square Average of the profile is similar in the concept of linear regression
	cont = 0;
for i = 1:length(Z)
		cont = cont + ((Z(i)-ZpromF(Z)).^2); %Donde Z es el roughness o datos de la imagen del AFM en una trayectoria determinda
		% E "i" una variable para el procedimiento de la sumatoria
end
    Rq = sqrt((1/length(Z)*cont));
end
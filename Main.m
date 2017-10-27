N = 10; %Individuals in a population
DNAPool = char(zeros(N,8)); %Array that contains population
%SDNAPool = char(zeros(N,8)); This was a temporary array but we are not
%using right now
 % 1-Fitness 2-Possibility 3-Percent chance 4-Beginning for Roulette wheel cell 5-Ending 6-Mark

for i = 1:N
    DNAPool(i,:) = Create_DNA; %Starting Population
end
clear i;
Prop = zeros(N,6);
Prop = Calculate_Fitness(Prop,DNAPool,N);
Prop = Calculate_Odds(Prop,N);
BeginningAverage = sum(Prop(:,1))/8;

DNAPool = Simulate( DNAPool, N);
clear Prop;
Prop = zeros(N,6);
Prop = Calculate_Fitness(Prop,DNAPool,N);
Prop = Calculate_Odds(Prop,N);
EndingAverage = sum(Prop(:,1))/8;

PROFIT = (EndingAverage-BeginningAverage)/8*100;

%fileID = fopen('PROFIT.txt','w');
%fprintf(fileID,'Percent: %6.4f PROFIT',PROFIT);
%fclose(fileID);
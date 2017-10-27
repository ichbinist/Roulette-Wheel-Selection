function [DNAPool] = Simulate( DNAPool, N )
i = 0;
while(i < 1000)
Prop = zeros(N,6);
Prop = Calculate_Fitness(Prop,DNAPool,N);
Prop = Calculate_Odds(Prop,N);
SDNAPool = char(zeros(N,8));
SDNAPool = Selection(DNAPool,SDNAPool, Prop ,N);
DNAPool = SDNAPool;
i = i+1;
end
end


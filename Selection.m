function [ SDNAPool ] = Selection(DNAPool,SDNAPool, Prop ,N)

while(SDNAPool(N,:) == char(0))
Chance = ceil(rand*100); %Male iterator chance
Male = 1;
Female = 1;

for iterator = 1:N
    if(Chance > Prop(iterator,4) && Chance < Prop(iterator,5))
        Male = iterator;
        
    end
end

Chance = ceil(rand*100); %Female iterator chance

for iteratorx = 1:N
    if(Chance > Prop(iteratorx,4) && Chance < Prop(iteratorx,5))
        Female = iteratorx;
        
    end
end
SPi = ceil(rand*100);

if(SPi < Prop(Male,3)*Prop(Female,3))
SDNAPool = Breed( DNAPool ,SDNAPool, Male, Female);
end

end
end


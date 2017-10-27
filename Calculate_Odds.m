function [ Prop ] = Calculate_Odds( Prop, N )
totalfitness = 0;
beginning = 1;

for i = 1:N
    totalfitness = totalfitness+Prop(i,1);
end

%Possibility w/ Percent Based
for i = 1:N
    Prop(i,2) = Prop(i,1)/totalfitness;
    Prop(i,3) = Prop(i,2)*100;
    Prop(i,4) = round(beginning);
    Prop(i,5) = round(beginning + Prop(i,3)) -1;
    beginning = round(Prop(i,5) +1);
end
end


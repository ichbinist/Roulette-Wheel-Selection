function [Prop] = Calculate_Fitness( Prop,DNAPool,N)

for i = 1:N
    for j = 1:8
        character = DNAPool(i,j);
        switch character
            case 'a'
                Prop(i,1) = Prop(i,1) + 0.8;
            case 'b'
                Prop(i,1) = Prop(i,1) + 0.2;
            case 'c'
                Prop(i,1) = Prop(i,1) + 0.2;
            case 'd'
                Prop(i,1) = Prop(i,1) + 0.1;
        end
    end
end
end


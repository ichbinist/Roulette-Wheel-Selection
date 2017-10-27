function [SDNA] = Breed( DNAPool ,SDNA, male, female)
    i = 1;
    flag = true;
    while(flag)
        if(isequal(SDNA(i,1),char(0)) == 1)
        
       for x = 1:4
            SDNA(i,x) = DNAPool(male,x);
        end
        
        for y = 5:8
            SDNA(i,y) = DNAPool(female,y);
        end
        
        mutationplace = ceil(8*rand);
        SDNA(i,mutationplace) = Mutation;
        flag = false;
        else
            i = i+1;
        end
    end
    end
    



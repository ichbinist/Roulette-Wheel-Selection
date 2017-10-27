function X = Mutation()

SET = char('a':'d'); 
NSET = length(SET); 
i = ceil(NSET*rand) ;
X = SET(i) ; %Mutation
end


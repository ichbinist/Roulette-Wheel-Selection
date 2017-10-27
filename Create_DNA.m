function DNA = Create_DNA()

SET = char('a':'d'); %Characters in a DNA(like nucleotides)
NSET = length(SET); %Length of characters array
N = 8; %DNA length
i = ceil(NSET*rand(1,N)) ; %Array of numbers 1 to 4
DNA = SET(i) ; %DNA
end


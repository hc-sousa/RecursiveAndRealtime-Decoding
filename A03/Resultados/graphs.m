% %      number of calls per message symbol      lookahead symbols
% %     -----------------------------------  ---------------------
% % ns       min      avg      med      max   min    avg  med  max
% %---  -------- -------- -------- --------  ---- ------ ---- ----
% fileName = 'files.txt'; %lista dos files na diretoria "Resultados"
% FID = fopen(fileName);
% data = textscan(FID,'%s');
% fclose(FID);
% stringData = string(data{:});
% figure
% for i = 1 : length(stringData)
%     file = stringData(i);
%     data = load(file);
%     % numero de chamadas médio
%     hold on
%     plot(data(1,1), data(1,4), 'p', 'color', 'green'); %calls intermedias
%     plot(data(1,1), data(1,5), '^', 'color', 'red'); %calls máxias
%     plot(data(1,1), data(1,3), '.', 'color', 'blue'); %calls médias
%     plot(data(1,1), data(1,2), 'v', 'color', 'black'); %calls minimas
%     set(gca,'yscale','log');
%     xlabel("Símbolos");
%     ylabel("Número de chamadas por símbolo médio")
%     set(gca,'yscale','log');
%     hold off
% end
% %números de bits máximo
% figure
% for i = 1 : length(stringData)
%     file = stringData(i);
%     data = load(file);
%     hold on
%     plot(data(1,1), data(1,8), 'p', 'color', 'green');
%     plot(data(1,1), data(1,9), '^', 'color', 'red');
%     plot(data(1,1), data(1,7), '.', 'color', 'blue');
%     plot(data(1,1), data(1,6), 'v', 'color', 'black');
%     xlabel("Símbolos");
%     ylabel("Número de símbolos extra")
%     hold off
% end

%numero max de possibilidadades
maxPos = load("../extras/maxPos.txt");
nS = load("../extras/nS.txt");
soma = 0;
for i = 1 : length(maxPos)
    i
   soma = soma + maxPos(i)/nS(i)
end
media = soma / length(maxPos)
% plot(nS, maxPos)
% xlabel("Símbolos");
% ylabel("Max número de possibilidades")
% randSE = randi(5,100,7);

pdID = {'IndexPT1.mat','IndexPT2.mat','IndexPT3.mat','IndexPT4.mat','IndexPT5.mat',...
    'IndexPT6.mat','IndexPT7.mat','IndexPT8.mat','IndexPT9.mat','IndexPT10.mat'};

for si = 1:length(pdID)
    load(pdID{si})
    inDATA = eval(extractBefore(pdID{si},'.'));
    for i = 1:height(inDATA)

        tempI = inDATA(i,3);
        switch tempI
            case 0
                p1 = patch([i-0.5 i+0.5 i+0.5 i-0.5],[si-1 si-1 si si],'k');
                p1.FaceColor = [0/255 63/255 92/255];
                p1.EdgeColor = 'none';
                hold on
            case 1
                p2 = patch([i-0.5 i+0.5 i+0.5 i-0.5],[si-1 si-1 si si],'k');
                p2.FaceColor = [88/255 80/255 141/255];
                p2.EdgeColor = 'none';
            case 2
                p3 = patch([i-0.5 i+0.5 i+0.5 i-0.5],[si-1 si-1 si si],'k');
                p3.FaceColor = [188/255 80/255 144/255];
                p3.EdgeColor = 'none';
            case 3
                p4 = patch([i-0.5 i+0.5 i+0.5 i-0.5],[si-1 si-1 si si],'k');
                p4.FaceColor = [255/255 99/255 97/255];
                p4.EdgeColor = 'none';
            case 5
                p5 = patch([i-0.5 i+0.5 i+0.5 i-0.5],[si-1 si-1 si si],'k');
                p5.FaceColor = [255/255 166/255 0/255];
                p5.EdgeColor = 'none';

        end
    end
end

test = 1;
yticks(0.5:1:9.5)
yticklabels(1:1:10)
ylabel('Subject ID')
xtickSS = xticks();
xtickLABBs = round(xtickSS/2/60,1);
xticklabels(xtickLABBs)
xlabel('Time (hours)')
ax = gca;exportgraphics(ax,'text.pdf','Resolution',600)



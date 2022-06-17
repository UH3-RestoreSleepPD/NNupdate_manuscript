randSE = randi(5,100,7);



for si = 1:7
    for i = 1:length(randSE)

        tempI = randSE(i,si);
        switch tempI
            case 1
                p1 = patch([i-0.5 i+0.5 i+0.5 i-0.5],[si-1 si-1 si si],'k');
                p1.FaceColor = [0/255 63/255 92/255];
                p1.EdgeColor = 'none';
                hold on
            case 2
                p2 = patch([i-0.5 i+0.5 i+0.5 i-0.5],[si-1 si-1 si si],'k');
                p2.FaceColor = [88/255 80/255 141/255];
                p2.EdgeColor = 'none';
            case 3
                p3 = patch([i-0.5 i+0.5 i+0.5 i-0.5],[si-1 si-1 si si],'k');
                p3.FaceColor = [188/255 80/255 144/255];
                p3.EdgeColor = 'none';
            case 4
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
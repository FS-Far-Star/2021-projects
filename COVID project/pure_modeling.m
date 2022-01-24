active(1) = 650657;
spread_rate = 0.069256674;
total(1) = 7283715;
total_pop = 311000000;
recovery = 0.0295;
for s = 1:1
    active_reality = [650657;
654983
661019
647568
651146
641530
666597
681313
696664
695385
697148
710967
720651
747930
767880
794864
782127
786174
820251
841545
855466
885544
919522
950397
947170
965415
999168
1031725
1066677
1106161
1130601
1269208
1245788
1280816
1344436
1401061
1468840
1440846
1495089
1568056
1651686
1722205
1806727
1913641
2035270
1903697
2020835
2110089
2168938
2255889
2322069
2405155
2409647
2456476
2494235
2550570
2502833
2516590
2433873
2495892
2496077
2538513
2588545
2647136
2664861
2679870
2674040
2713456
2804194
2864397
2894013
3008311
3049692
3045662
3120700
3143856
3221189
3253037
3259149
3217141
3234583
3218046
3203150
3231622
3181681
3019343
3023085
2953279
2956281
2975902
2995166
2975357
2847538
3046553
2988414
2939558
3024302
3063100
3180504
3390137
3393493
3440096
3440981
3474546
3477801
3477844
3575301
3469518
3415775
3352726
3271118
3252005
3161992
3042725
2946036
2837823
2763597
2709757
2646217
2580163
2504246
2409343
2307379
2297559
2258350
2195703
2135639
2079402];
end%storing actual data.
t = [1:128];
for i = 2:128 % Oct 1st to Feb 8th
    awareness = total(i-1)/total_pop*10;
    daily_spread_rate = spread_rate * (1-awareness);
    daily_increase = daily_spread_rate * active(i-1);
    active(i) = (1-recovery)*active(i-1) + daily_increase;
    total(i) = total(i-1) + daily_increase;
end
active = active';
plot(t,active,t,active_reality,'linewidth',1)
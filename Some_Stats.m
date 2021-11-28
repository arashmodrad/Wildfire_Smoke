
[N,X] = hist(Freq_Seek_Air_Ntfn,1:6)

[N,X] = hist(Length_reduce,1:6)

[N,X] = hist(Info_Limit_Out(:),1:7) 

[N,X] = hist(Content_mitigate(:),1:7) 

[N,X] = hist(Symptom(:),1:15) 

[N,X] = hist(Measure(:),1:8) 


%% Age versus evacuating home due to smoke Q2/Q26 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),6);
for i = 1:6
    id = find( Length_reduce == i );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 6.5 18 90])
set(gca,'xtick',1:6,'xticklabel',{['0 days (',num2str(Size(1)),')'],['1 to 2 days (',num2str(Size(2)),')'],['3 days (',num2str(Size(3)),')'],['4 days (',num2str(Size(4)),')'],['5 days (',num2str(Size(5)),')'],['6+ days (',num2str(Size(6)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on

%% Education versus Receiveing air quality Q6/Q16 - in-person
figure
clear Education_ReceiveAQN Size_Education
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:8
    id = find( Education == i );
    Size_Education(i,1) = length(id);
    Education_ReceiveAQN(i,:) = [sum(Length_reduce(id)==1) sum(Length_reduce(id)==2) sum(Length_reduce(id)==3) sum(Length_reduce(id)==4) sum(Length_reduce(id)==5) sum(Length_reduce(id)==6)];
end
Scaled_Education_ReceiveAQN = Education_ReceiveAQN ./ repmat(sum(Education_ReceiveAQN,2),1,size(Education_ReceiveAQN,2));

scatter(repmat(1:8,1,6)',[ones(1,8) 2*ones(1,8) 3*ones(1,8) 4*ones(1,8) 5*ones(1,8) 6*ones(1,8)]',3000,Scaled_Education_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 8.5 0.5 6.5])
set(gca,'xtick',1:8, 'xticklabel',{['8th grade or less (',num2str(Size_Education(1)),')'], ['Some highschool, no diploma (',num2str(Size_Education(2)),')'], ['Highschool graduate, diploma or GED (',num2str(Size_Education(3)),')'],['Some college, no degree (',num2str(Size_Education(4)),')'],['Associates degree (',num2str(Size_Education(5)),')'],['Bachelor''s degree (',num2str(Size_Education(6)),')'],['Master''s degree (',num2str(Size_Education(7)),')'],['PhD, MD, JD, or similar (',num2str(Size_Education(8)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:6,'yticklabel',{'0 days','1 to 2 days','3 days','4 days','5 days','6+ days'})

%% Education versus Receiveing air quality Q6/Q16 online
figure
clear Education_ReceiveAQN Size_Education
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Education == i );
    Size_Education(i,1) = length(id);
    Education_ReceiveAQN(i,:) = [sum(Length_reduce(id)==1) sum(Length_reduce(id)==2) sum(Length_reduce(id)==3) sum(Length_reduce(id)==4) sum(Length_reduce(id)==5) sum(Length_reduce(id)==6)];
end
Scaled_Education_ReceiveAQN = Education_ReceiveAQN ./ repmat(sum(Education_ReceiveAQN,2),1,size(Education_ReceiveAQN,2));

scatter(repmat(1:5,1,6)',[ones(1,5) 2*ones(1,5) 3*ones(1,5) 4*ones(1,5) 5*ones(1,5) 6*ones(1,5)]',3000,Scaled_Education_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 6.5])
set(gca,'xtick',1:5,'xticklabel',{['Undergrad: freshman/sophomore (',num2str(Size_Education(1)),')'], ['Undergrad: junior/senior (',num2str(Size_Education(2)),')'], ['Grad student (',num2str(Size_Education(3)),')'],['Boise State staff (',num2str(Size_Education(4)),')'],['Boise State faculty (',num2str(Size_Education(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:6,'yticklabel',{'0 days','1 to 2 days','3 days','4 days','5 days','6+ days'})

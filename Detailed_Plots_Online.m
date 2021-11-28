%% Race versus receiving air quality Q4/Q11
figure
clear Race_ReceiveAQN Size_Race
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:6
    id = find( any( Ethnicity_multiple == i ) );
    Size_Race(i,1) = length(id);
    Race_ReceiveAQN(i,:) = [sum(Rec_Air_Ntfn(id)==1) sum(Rec_Air_Ntfn(id)==2)];
end
Scaled_Race_ReceiveAQN = Race_ReceiveAQN ./ repmat(sum(Race_ReceiveAQN,2),1,size(Race_ReceiveAQN,2));

scatter([1:6,1:6]',[ones(1,6) 2*ones(1,6)]',3000,Scaled_Race_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 6.5 0.5 2.5])
set(gca,'xticklabel',{['White / Caucausian (',num2str(Size_Race(1)),')'], ['Hispanic / Latino (',num2str(Size_Race(2)),')'], ['Black / African American (',num2str(Size_Race(3)),')'],['Native American (',num2str(Size_Race(4)),')'],['Asian / Pacific Islander (',num2str(Size_Race(5)),')'],['Other (',num2str(Size_Race(6)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})

%% Race versus seeking air quality Q4/Q12
figure
clear Race_SeekAQN Size_Race
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:6
    id = find( any( Ethnicity_multiple == i ) );
    Size_Race(i,1) = length(id);
    Race_SeekAQN(i,:) = [sum(Seek_Air_Ntfn(id)==1) sum(Seek_Air_Ntfn(id)==2)];
end
Scaled_Race_SeekAQN = Race_SeekAQN ./ repmat(sum(Race_SeekAQN,2),1,size(Race_SeekAQN,2));

scatter([1:6,1:6]',[ones(1,6) 2*ones(1,6)]',3000,Scaled_Race_SeekAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 6.5 0.5 2.5])
set(gca,'xticklabel',{['White / Caucausian (',num2str(Size_Race(1)),')'], ['Hispanic / Latino (',num2str(Size_Race(2)),')'], ['Black / African American (',num2str(Size_Race(3)),')'],['Native American (',num2str(Size_Race(4)),')'],['Asian / Pacific Islander (',num2str(Size_Race(5)),')'],['Other (',num2str(Size_Race(6)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})

%% Education versus Receiveing air quality Q6/Q11
figure
clear Education_ReceiveAQN Size_Education
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Education == i );
    Size_Education(i,1) = length(id);
    Education_ReceiveAQN(i,:) = [sum(Rec_Air_Ntfn(id)==1) sum(Rec_Air_Ntfn(id)==2)];
end
Scaled_Education_ReceiveAQN = Education_ReceiveAQN ./ repmat(sum(Education_ReceiveAQN,2),1,size(Education_ReceiveAQN,2));

scatter([1:5,1:5]',[ones(1,5) 2*ones(1,5)]',3000,Scaled_Education_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 2.5])
set(gca,'xtick',1:5,'xticklabel',{['Undergrad: freshman/sophomore (',num2str(Size_Education(1)),')'], ['Undergrad: junior/senior (',num2str(Size_Education(2)),')'], ['Grad student (',num2str(Size_Education(3)),')'],['Boise State staff (',num2str(Size_Education(4)),')'],['Boise State faculty (',num2str(Size_Education(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})

%% Education versus seeking air quality Q6/Q12
figure
clear  Education_SeekAQN Size_Education
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Education == i );
    Size_Education(i,1) = length(id);
    Education_SeekAQN(i,:) = [sum(Seek_Air_Ntfn(id)==1) sum(Seek_Air_Ntfn(id)==2)];
end
Scaled_Education_SeekAQN = Education_SeekAQN ./ repmat(sum(Education_SeekAQN,2),1,size(Education_SeekAQN,2));

scatter([1:5,1:5]',[ones(1,5) 2*ones(1,5)]',3000,Scaled_Education_SeekAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 2.5])
set(gca,'xtick',1:5,'xticklabel',{['Undergrad: freshman/sophomore (',num2str(Size_Education(1)),')'], ['Undergrad: junior/senior (',num2str(Size_Education(2)),')'], ['Grad student (',num2str(Size_Education(3)),')'],['Boise State staff (',num2str(Size_Education(4)),')'],['Boise State faculty (',num2str(Size_Education(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})

%% Income versus Receiveing air quality Q7/Q11
figure
clear Income_ReceiveAQN Size_Income
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Income == i );
    Size_Income(i,1) = length(id);
    Income_ReceiveAQN(i,:) = [sum(Rec_Air_Ntfn(id)==1) sum(Rec_Air_Ntfn(id)==2)];
end
Scaled_Income_ReceiveAQN = Income_ReceiveAQN ./ repmat(sum(Income_ReceiveAQN,2),1,size(Income_ReceiveAQN,2));

scatter([1:5,1:5]',[ones(1,5) 2*ones(1,5)]',4000,Scaled_Income_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 2.5])
set(gca,'xticklabel',{['$25,000 or less (',num2str(Size_Income(1)),')'], ['$25,000 to $49,999 (',num2str(Size_Income(2)),')'], ['$50,000 to $74,999 (',num2str(Size_Income(3)),')'],['$75,000 to $100,000 (',num2str(Size_Income(4)),')'],['$100,000 or more (',num2str(Size_Income(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})

%% Income versus Seeking air quality Q7/Q12
figure
clear Size_Income Income_SeekAQN
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Income == i );
    Size_Income(i,1) = length(id);
    Income_SeekAQN(i,:) = [sum(Seek_Air_Ntfn(id)==1) sum(Seek_Air_Ntfn(id)==2)];
end
Scaled_Income_SeekAQN = Income_SeekAQN ./ repmat(sum(Income_SeekAQN,2),1,size(Income_SeekAQN,2));

scatter([1:5,1:5]',[ones(1,5) 2*ones(1,5)]',4000,Scaled_Income_SeekAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 2.5])
set(gca,'xticklabel',{['$25,000 or less (',num2str(Size_Income(1)),')'], ['$25,000 to $49,999 (',num2str(Size_Income(2)),')'], ['$50,000 to $74,999 (',num2str(Size_Income(3)),')'],['$75,000 to $100,000 (',num2str(Size_Income(4)),')'],['$100,000 or more (',num2str(Size_Income(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})

%% Race versus source of air quality notification Q4/Q13
clear Race_ReceiveAQN Size_Race
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:6
    id = find( any( Ethnicity_multiple == i ) );
    Size_Race(i,1) = length(id);
    Race_ReceiveAQN(i,:) = [sum(any(Source_Ntfn(:,id)==1)) sum(any(Source_Ntfn(:,id)==2)) sum(any(Source_Ntfn(:,id)==3)) sum(any(Source_Ntfn(:,id)==4)) sum(any(Source_Ntfn(:,id)==5)) sum(any(Source_Ntfn(:,id)==6)) sum(any(Source_Ntfn(:,id)==7)) sum(any(Source_Ntfn(:,id)==8)) sum(any(Source_Ntfn(:,id)==9)) sum(any(Source_Ntfn(:,id)==10)) sum(any(Source_Ntfn(:,id)==11))];
end
Scaled_Race_ReceiveAQN = Race_ReceiveAQN ./ repmat(sum(Race_ReceiveAQN,2),1,size(Race_ReceiveAQN,2));

scatter(repmat(1:6,1,11)',[ones(1,6) 2*ones(1,6) 3*ones(1,6) 4*ones(1,6) 5*ones(1,6) 6*ones(1,6) 7*ones(1,6) 8*ones(1,6) 9*ones(1,6) 10*ones(1,6) 11*ones(1,6)]',1000,Scaled_Race_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 6.5 0 12])
set(gca,'xticklabel',{['White / Caucausian (',num2str(Size_Race(1)),')'], ['Hispanic / Latino (',num2str(Size_Race(2)),')'], ['Black / African American (',num2str(Size_Race(3)),')'],['Native American (',num2str(Size_Race(4)),')'],['Asian / Pacific Islander (',num2str(Size_Race(5)),')'],['Other (',num2str(Size_Race(6)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:11,'yticklabel',{'Social media','Television','Online news sources','Newspapers','Friends or family','Personal Observation','State agencies','Idaho smoke blog','Federal sources','Road signs','Other'})
ytickangle(30);
grid on


%% Education versus source of air quality notification Q6/Q13
clear Education_ReceiveAQN Size_Education
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Education == i );
    Size_Education(i,1) = length(id);
    Education_ReceiveAQN(i,:) = [sum(any(Source_Ntfn(:,id)==1)) sum(any(Source_Ntfn(:,id)==2)) sum(any(Source_Ntfn(:,id)==3)) sum(any(Source_Ntfn(:,id)==4)) sum(any(Source_Ntfn(:,id)==5)) sum(any(Source_Ntfn(:,id)==6)) sum(any(Source_Ntfn(:,id)==7)) sum(any(Source_Ntfn(:,id)==8)) sum(any(Source_Ntfn(:,id)==9)) sum(any(Source_Ntfn(:,id)==10)) sum(any(Source_Ntfn(:,id)==11))];
end
Scaled_Education_ReceiveAQN = Education_ReceiveAQN ./ repmat(sum(Education_ReceiveAQN,2),1,size(Education_ReceiveAQN,2));

scatter(repmat(1:5,1,11)',[ones(1,5) 2*ones(1,5) 3*ones(1,5) 4*ones(1,5) 5*ones(1,5) 6*ones(1,5) 7*ones(1,5) 8*ones(1,5) 9*ones(1,5) 10*ones(1,5) 11*ones(1,5)]',800,Scaled_Education_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0 12])
set(gca,'xtick',1:5,'xticklabel',{['Undergrad: freshman/sophomore (',num2str(Size_Education(1)),')'], ['Undergrad: junior/senior (',num2str(Size_Education(2)),')'], ['Grad student (',num2str(Size_Education(3)),')'],['Boise State staff (',num2str(Size_Education(4)),')'],['Boise State faculty (',num2str(Size_Education(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:11,'yticklabel',{'Social media','Television','Online news sources','Newspapers','Friends or family','Personal Observation','State agencies','Idaho smoke blog','Federal sources','Road signs','Other'})
ytickangle(30);
grid on


%% Income versus source of air quality notification Q7/Q13 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Income == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(any(Source_Ntfn(:,id)==1)) sum(any(Source_Ntfn(:,id)==2)) sum(any(Source_Ntfn(:,id)==3)) sum(any(Source_Ntfn(:,id)==4)) sum(any(Source_Ntfn(:,id)==5)) sum(any(Source_Ntfn(:,id)==6)) sum(any(Source_Ntfn(:,id)==7)) sum(any(Source_Ntfn(:,id)==8)) sum(any(Source_Ntfn(:,id)==9)) sum(any(Source_Ntfn(:,id)==10)) sum(any(Source_Ntfn(:,id)==11))];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:5,1,11)',[ones(1,5) 2*ones(1,5) 3*ones(1,5) 4*ones(1,5) 5*ones(1,5) 6*ones(1,5) 7*ones(1,5) 8*ones(1,5) 9*ones(1,5) 10*ones(1,5) 11*ones(1,5)]',1000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0 12])
set(gca,'xticklabel',{['$25,000 or less (',num2str(Size_Income(1)),')'], ['$25,000 to $49,999 (',num2str(Size_Income(2)),')'], ['$50,000 to $74,999 (',num2str(Size_Income(3)),')'],['$75,000 to $100,000 (',num2str(Size_Income(4)),')'],['$100,000 or more (',num2str(Size_Income(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:11,'yticklabel',{'Social media','Television','Online news sources','Newspapers','Friends or family','Personal Observation','State agencies','Idaho smoke blog','Federal sources','Road signs','Other'})
ytickangle(30);
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Race versus reducing outside activities Q4/Q15 % variable names are not important
figure
clear Race_ReceiveAQN Size_Race
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:6
    id = find( any( Ethnicity_multiple == i ) );
    Size_Race(i,1) = length(id);
    Race_ReceiveAQN(i,:) = [sum(Reduce_out_act(id)==1) sum(Reduce_out_act(id)==2)];
end
Scaled_Race_ReceiveAQN = Race_ReceiveAQN ./ repmat(sum(Race_ReceiveAQN,2),1,size(Race_ReceiveAQN,2));

scatter([1:6,1:6]',[ones(1,6) 2*ones(1,6)]',4000,Scaled_Race_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 6.5 0.5 2.5])
set(gca,'xticklabel',{['White / Caucausian (',num2str(Size_Race(1)),')'], ['Hispanic / Latino (',num2str(Size_Race(2)),')'], ['Black / African American (',num2str(Size_Race(3)),')'],['Native American (',num2str(Size_Race(4)),')'],['Asian / Pacific Islander (',num2str(Size_Race(5)),')'],['Other (',num2str(Size_Race(6)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})

%% Education versus reducing outside activities Q6/Q15 % variable names are not important
figure
clear Education_ReceiveAQN Size_Education
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Education == i );
    Size_Education(i,1) = length(id);
    Education_ReceiveAQN(i,:) = [sum(Reduce_out_act(id)==1) sum(Reduce_out_act(id)==2)];
end
Scaled_Education_ReceiveAQN = Education_ReceiveAQN ./ repmat(sum(Education_ReceiveAQN,2),1,size(Education_ReceiveAQN,2));

scatter([1:5,1:5]',[ones(1,5) 2*ones(1,5)]',3000,Scaled_Education_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 2.5])
set(gca,'xtick',1:5,'xticklabel',{['Undergrad: freshman/sophomore (',num2str(Size_Education(1)),')'], ['Undergrad: junior/senior (',num2str(Size_Education(2)),')'], ['Grad student (',num2str(Size_Education(3)),')'],['Boise State staff (',num2str(Size_Education(4)),')'],['Boise State faculty (',num2str(Size_Education(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})


%% Income versus reducing outside activities Q7/Q15 % variable names are not important
figure
clear Income_ReceiveAQN Size_Income
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Income == i );
    Size_Income(i,1) = length(id);
    Income_ReceiveAQN(i,:) = [sum(Reduce_out_act(id)==1) sum(Reduce_out_act(id)==2)];
end
Scaled_Income_ReceiveAQN = Income_ReceiveAQN ./ repmat(sum(Income_ReceiveAQN,2),1,size(Income_ReceiveAQN,2));

scatter([1:5,1:5]',[ones(1,5) 2*ones(1,5)]',4000,Scaled_Income_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 2.5])
set(gca,'xticklabel',{['$25,000 or less (',num2str(Size_Income(1)),')'], ['$25,000 to $49,999 (',num2str(Size_Income(2)),')'], ['$50,000 to $74,999 (',num2str(Size_Income(3)),')'],['$75,000 to $100,000 (',num2str(Size_Income(4)),')'],['$100,000 or more (',num2str(Size_Income(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Race versus min AQI to reduce outside activity Q4/Q17 % variable names are not important
clear Race_ReceiveAQN Size_Race
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:6
    id = find( any( Ethnicity_multiple == i ) );
    Size_Race(i,1) = length(id);
    Race_ReceiveAQN(i,:) = [sum(AQI_reduce(id)==1) sum(AQI_reduce(id)==2) sum(AQI_reduce(id)==3) sum(AQI_reduce(id)==4) sum(AQI_reduce(id)==5) sum(AQI_reduce(id)==6) sum(AQI_reduce(id)==7)];
end
Scaled_Race_ReceiveAQN = Race_ReceiveAQN ./ repmat(sum(Race_ReceiveAQN,2),1,size(Race_ReceiveAQN,2));

scatter(repmat(1:6,1,7)',[ones(1,6) 2*ones(1,6) 3*ones(1,6) 4*ones(1,6) 5*ones(1,6) 6*ones(1,6) 7*ones(1,6)]',1000,Scaled_Race_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 6.5 0 8])
set(gca,'xticklabel',{['White / Caucausian (',num2str(Size_Race(1)),')'], ['Hispanic / Latino (',num2str(Size_Race(2)),')'], ['Black / African American (',num2str(Size_Race(3)),')'],['Native American (',num2str(Size_Race(4)),')'],['Asian / Pacific Islander (',num2str(Size_Race(5)),')'],['Other (',num2str(Size_Race(6)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:7,'yticklabel',{'Green-Good','Yellow-Moderate','Orange-Unhealthy for Sensitives','Red-Unhealthy','Purple-Very Unhealthy','Maroon-Hazardous','Not Familiar'})
ytickangle(30);
grid on


%% Education versus min AQI to reduce outside activity Q6/Q17 % variable names are not important
clear Education_ReceiveAQN Size_Education
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Education == i );
    Size_Education(i,1) = length(id);
    Education_ReceiveAQN(i,:) = [sum(AQI_reduce(id)==1) sum(AQI_reduce(id)==2) sum(AQI_reduce(id)==3) sum(AQI_reduce(id)==4) sum(AQI_reduce(id)==5) sum(AQI_reduce(id)==6) sum(AQI_reduce(id)==7)];
end
Scaled_Education_ReceiveAQN = Education_ReceiveAQN ./ repmat(sum(Education_ReceiveAQN,2),1,size(Education_ReceiveAQN,2));

scatter(repmat(1:5,1,7)',[ones(1,5) 2*ones(1,5) 3*ones(1,5) 4*ones(1,5) 5*ones(1,5) 6*ones(1,5) 7*ones(1,5)]',1000,Scaled_Education_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0 8])
set(gca,'xtick',1:5,'xticklabel',{['Undergrad: freshman/sophomore (',num2str(Size_Education(1)),')'], ['Undergrad: junior/senior (',num2str(Size_Education(2)),')'], ['Grad student (',num2str(Size_Education(3)),')'],['Boise State staff (',num2str(Size_Education(4)),')'],['Boise State faculty (',num2str(Size_Education(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:7,'yticklabel',{'Green-Good','Yellow-Moderate','Orange-Unhealthy for Sensitives','Red-Unhealthy','Purple-Very Unhealthy','Maroon-Hazardous','Not Familiar'})
ytickangle(30);
grid on


%% Income versus min AQI to reduce outside activity Q7/Q17 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Income == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(AQI_reduce(id)==1) sum(AQI_reduce(id)==2) sum(AQI_reduce(id)==3) sum(AQI_reduce(id)==4) sum(AQI_reduce(id)==5) sum(AQI_reduce(id)==6) sum(AQI_reduce(id)==7)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:5,1,7)',[ones(1,5) 2*ones(1,5) 3*ones(1,5) 4*ones(1,5) 5*ones(1,5) 6*ones(1,5) 7*ones(1,5)]',1000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0 8])
set(gca,'xtick',1:5,'xticklabel',{['$25,000 or less (',num2str(Size_Income(1)),')'], ['$25,000 to $49,999 (',num2str(Size_Income(2)),')'], ['$50,000 to $74,999 (',num2str(Size_Income(3)),')'],['$75,000 to $100,000 (',num2str(Size_Income(4)),')'],['$100,000 or more (',num2str(Size_Income(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:7,'yticklabel',{'Green-Good','Yellow-Moderate','Orange-Unhealthy for Sensitives','Red-Unhealthy','Purple-Very Unhealthy','Maroon-Hazardous','Not Familiar'})
ytickangle(30);
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Race versus min AQI to eliminate outside activity Q4/Q18 % variable names are not important
clear Race_ReceiveAQN Size_Race
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:6
    id = find( any( Ethnicity_multiple == i ) );
    Size_Race(i,1) = length(id);
    Race_ReceiveAQN(i,:) = [sum(AQI_eliminate(id)==1) sum(AQI_eliminate(id)==2) sum(AQI_eliminate(id)==3) sum(AQI_eliminate(id)==4) sum(AQI_eliminate(id)==5) sum(AQI_eliminate(id)==6) sum(AQI_eliminate(id)==7)];
end
Scaled_Race_ReceiveAQN = Race_ReceiveAQN ./ repmat(sum(Race_ReceiveAQN,2),1,size(Race_ReceiveAQN,2));

scatter(repmat(1:6,1,7)',[ones(1,6) 2*ones(1,6) 3*ones(1,6) 4*ones(1,6) 5*ones(1,6) 6*ones(1,6) 7*ones(1,6)]',1000,Scaled_Race_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 6.5 0 8])
set(gca,'xticklabel',{['White / Caucausian (',num2str(Size_Race(1)),')'], ['Hispanic / Latino (',num2str(Size_Race(2)),')'], ['Black / African American (',num2str(Size_Race(3)),')'],['Native American (',num2str(Size_Race(4)),')'],['Asian / Pacific Islander (',num2str(Size_Race(5)),')'],['Other (',num2str(Size_Race(6)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:7,'yticklabel',{'Green-Good','Yellow-Moderate','Orange-Unhealthy for Sensitives','Red-Unhealthy','Purple-Very Unhealthy','Maroon-Hazardous','Not Familiar'})
ytickangle(30);
grid on


%% Education versus min AQI to eliminate outside activity Q4/Q18 % variable names are not important
clear Education_ReceiveAQN Size_Education
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Education == i );
    Size_Education(i,1) = length(id);
    Education_ReceiveAQN(i,:) = [sum(AQI_eliminate(id)==1) sum(AQI_eliminate(id)==2) sum(AQI_eliminate(id)==3) sum(AQI_eliminate(id)==4) sum(AQI_eliminate(id)==5) sum(AQI_eliminate(id)==6) sum(AQI_eliminate(id)==7)];
end
Scaled_Education_ReceiveAQN = Education_ReceiveAQN ./ repmat(sum(Education_ReceiveAQN,2),1,size(Education_ReceiveAQN,2));

scatter(repmat(1:5,1,7)',[ones(1,5) 2*ones(1,5) 3*ones(1,5) 4*ones(1,5) 5*ones(1,5) 6*ones(1,5) 7*ones(1,5)]',1000,Scaled_Education_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0 8])
set(gca,'xtick',1:5,'xticklabel',{['Undergrad: freshman/sophomore (',num2str(Size_Education(1)),')'], ['Undergrad: junior/senior (',num2str(Size_Education(2)),')'], ['Grad student (',num2str(Size_Education(3)),')'],['Boise State staff (',num2str(Size_Education(4)),')'],['Boise State faculty (',num2str(Size_Education(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:7,'yticklabel',{'Green-Good','Yellow-Moderate','Orange-Unhealthy for Sensitives','Red-Unhealthy','Purple-Very Unhealthy','Maroon-Hazardous','Not Familiar'})
ytickangle(30);
grid on


%% Income versus min AQI to eliminate outside activity Q4/Q18 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Income == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(AQI_eliminate(id)==1) sum(AQI_eliminate(id)==2) sum(AQI_eliminate(id)==3) sum(AQI_eliminate(id)==4) sum(AQI_eliminate(id)==5) sum(AQI_eliminate(id)==6) sum(AQI_eliminate(id)==7)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:5,1,7)',[ones(1,5) 2*ones(1,5) 3*ones(1,5) 4*ones(1,5) 5*ones(1,5) 6*ones(1,5) 7*ones(1,5)]',1000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0 8])
set(gca,'xtick',1:5,'xticklabel',{['$25,000 or less (',num2str(Size_Income(1)),')'], ['$25,000 to $49,999 (',num2str(Size_Income(2)),')'], ['$50,000 to $74,999 (',num2str(Size_Income(3)),')'],['$75,000 to $100,000 (',num2str(Size_Income(4)),')'],['$100,000 or more (',num2str(Size_Income(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:7,'yticklabel',{'Green-Good','Yellow-Moderate','Orange-Unhealthy for Sensitives','Red-Unhealthy','Purple-Very Unhealthy','Maroon-Hazardous','Not Familiar'})
ytickangle(30);
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Race versus wildfire smoke being a hazard Q4/Q24 % variable names are not important
clear Race_ReceiveAQN Size_Race
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:6
    id = find( any( Ethnicity_multiple == i ) );
    Size_Race(i,1) = length(id);
    Race_ReceiveAQN(i,:) = [sum(Hazard(id)==1) sum(Hazard(id)==2) sum(Hazard(id)==3)];
end
Scaled_Race_ReceiveAQN = Race_ReceiveAQN ./ repmat(sum(Race_ReceiveAQN,2),1,size(Race_ReceiveAQN,2));

scatter(repmat(1:6,1,3)',[ones(1,6) 2*ones(1,6) 3*ones(1,6)]',4000,Scaled_Race_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 6.5 0.5 3.5])
set(gca,'xticklabel',{['White / Caucausian (',num2str(Size_Race(1)),')'], ['Hispanic / Latino (',num2str(Size_Race(2)),')'], ['Black / African American (',num2str(Size_Race(3)),')'],['Native American (',num2str(Size_Race(4)),')'],['Asian / Pacific Islander (',num2str(Size_Race(5)),')'],['Other (',num2str(Size_Race(6)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:3,'yticklabel',{'Yes','No','Not Sure'})
ytickangle(30);
grid on


%% Education versus wildfire smoke being a hazard Q6/Q24 % variable names are not important
clear Education_ReceiveAQN Size_Education
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Education == i );
    Size_Education(i,1) = length(id);
    Education_ReceiveAQN(i,:) = [sum(Hazard(id)==1) sum(Hazard(id)==2) sum(Hazard(id)==3)];
end
Scaled_Education_ReceiveAQN = Education_ReceiveAQN ./ repmat(sum(Education_ReceiveAQN,2),1,size(Education_ReceiveAQN,2));

scatter(repmat(1:5,1,3)',[ones(1,5) 2*ones(1,5) 3*ones(1,5)]',3000,Scaled_Education_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 3.5])
set(gca,'xtick',1:5,'xticklabel',{['Undergrad: freshman/sophomore (',num2str(Size_Education(1)),')'], ['Undergrad: junior/senior (',num2str(Size_Education(2)),')'], ['Grad student (',num2str(Size_Education(3)),')'],['Boise State staff (',num2str(Size_Education(4)),')'],['Boise State faculty (',num2str(Size_Education(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:3,'yticklabel',{'Yes','No','Not Sure'})
ytickangle(30);
grid on


%% Income versus wildfire smoke being a hazard Q7/Q24 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Income == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Hazard(id)==1) sum(Hazard(id)==2) sum(Hazard(id)==3)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:5,1,3)',[ones(1,5) 2*ones(1,5) 3*ones(1,5)]',4000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 3.5])
set(gca,'xtick',1:5,'xticklabel',{['$25,000 or less (',num2str(Size_Income(1)),')'], ['$25,000 to $49,999 (',num2str(Size_Income(2)),')'], ['$50,000 to $74,999 (',num2str(Size_Income(3)),')'],['$75,000 to $100,000 (',num2str(Size_Income(4)),')'],['$100,000 or more (',num2str(Size_Income(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:3,'yticklabel',{'Yes','No','Not Sure'})
ytickangle(30);
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Race versus wildfire smoke comparison with other hazards Q4/Q25 % variable names are not important
clear Race_ReceiveAQN Size_Race
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:6
    id = find( any( Ethnicity_multiple == i ) );
    Size_Race(i,1) = length(id);
    Race_ReceiveAQN(i,:) = [sum(Hazard_compare(id)==1) sum(Hazard_compare(id)==2) sum(Hazard_compare(id)==3) sum(Hazard_compare(id)==4) sum(Hazard_compare(id)==5)];
end
Scaled_Race_ReceiveAQN = Race_ReceiveAQN ./ repmat(sum(Race_ReceiveAQN,2),1,size(Race_ReceiveAQN,2));

scatter(repmat(1:6,1,5)',[ones(1,6) 2*ones(1,6) 3*ones(1,6) 4*ones(1,6) 5*ones(1,6)]',3000,Scaled_Race_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 6.5 0.5 5.5])
set(gca,'xticklabel',{['White / Caucausian (',num2str(Size_Race(1)),')'], ['Hispanic / Latino (',num2str(Size_Race(2)),')'], ['Black / African American (',num2str(Size_Race(3)),')'],['Native American (',num2str(Size_Race(4)),')'],['Asian / Pacific Islander (',num2str(Size_Race(5)),')'],['Other (',num2str(Size_Race(6)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:5,'yticklabel',{'Much less severe/important','Somewhat less severe/important','About as severe/important','Somewhat more severe/important','Much more severe/important'})
ytickangle(30);
grid on


%% Education versus wildfire smoke comparison with other hazards Q6/Q25 % variable names are not important
clear Education_ReceiveAQN Size_Education
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Education == i );
    Size_Education(i,1) = length(id);
    Education_ReceiveAQN(i,:) = [sum(Hazard_compare(id)==1) sum(Hazard_compare(id)==2) sum(Hazard_compare(id)==3) sum(Hazard_compare(id)==4) sum(Hazard_compare(id)==5)];
end
Scaled_Education_ReceiveAQN = Education_ReceiveAQN ./ repmat(sum(Education_ReceiveAQN,2),1,size(Education_ReceiveAQN,2));

scatter(repmat(1:5,1,5)',[ones(1,5) 2*ones(1,5) 3*ones(1,5) 4*ones(1,5) 5*ones(1,5)]',2000,Scaled_Education_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 5.5])
set(gca,'xtick',1:5,'xticklabel',{['Undergrad: freshman/sophomore (',num2str(Size_Education(1)),')'], ['Undergrad: junior/senior (',num2str(Size_Education(2)),')'], ['Grad student (',num2str(Size_Education(3)),')'],['Boise State staff (',num2str(Size_Education(4)),')'],['Boise State faculty (',num2str(Size_Education(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:5,'yticklabel',{'Much less severe/important','Somewhat less severe/important','About as severe/important','Somewhat more severe/important','Much more severe/important'})
ytickangle(30);
grid on


%% Income versus wildfire smoke comparison with other hazards Q7/Q25 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Income == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Hazard_compare(id)==1) sum(Hazard_compare(id)==2) sum(Hazard_compare(id)==3) sum(Hazard_compare(id)==4) sum(Hazard_compare(id)==5)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:5,1,5)',[ones(1,5) 2*ones(1,5) 3*ones(1,5) 4*ones(1,5) 5*ones(1,5)]',3000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 5.5])
set(gca,'xtick',1:5,'xticklabel',{['$25,000 or less (',num2str(Size_Income(1)),')'], ['$25,000 to $49,999 (',num2str(Size_Income(2)),')'], ['$50,000 to $74,999 (',num2str(Size_Income(3)),')'],['$75,000 to $100,000 (',num2str(Size_Income(4)),')'],['$100,000 or more (',num2str(Size_Income(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:5,'yticklabel',{'Much less severe/important','Somewhat less severe/important','About as severe/important','Somewhat more severe/important','Much more severe/important'})
ytickangle(30);
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Race versus willingness to evacuate home due to wildfire smoke Q4/Q26 % variable names are not important
clear Race_ReceiveAQN Size_Race
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:6
    id = find( any( Ethnicity_multiple == i ) );
    Size_Race(i,1) = length(id);
    Race_ReceiveAQN(i,:) = [sum(Evacuate(id)==1) sum(Evacuate(id)==2) sum(Evacuate(id)==3) sum(Evacuate(id)==4)];
end
Scaled_Race_ReceiveAQN = Race_ReceiveAQN ./ repmat(sum(Race_ReceiveAQN,2),1,size(Race_ReceiveAQN,2));

scatter(repmat(1:6,1,4)',[ones(1,6) 2*ones(1,6) 3*ones(1,6) 4*ones(1,6)]',3000,Scaled_Race_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 6.5 0.5 4.5])
set(gca,'xticklabel',{['White / Caucausian (',num2str(Size_Race(1)),')'], ['Hispanic / Latino (',num2str(Size_Race(2)),')'], ['Black / African American (',num2str(Size_Race(3)),')'],['Native American (',num2str(Size_Race(4)),')'],['Asian / Pacific Islander (',num2str(Size_Race(5)),')'],['Other (',num2str(Size_Race(6)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:4,'yticklabel',{'Yes, I''ve done in the past','Yes, I would consider','No','Prefer not to answer'})
ytickangle(30);
grid on


%% Education versus willingness to evacuate home due to wildfire smoke Q6/Q26 % variable names are not important
clear Education_ReceiveAQN Size_Education
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Education == i );
    Size_Education(i,1) = length(id);
    Education_ReceiveAQN(i,:) = [sum(Evacuate(id)==1) sum(Evacuate(id)==2) sum(Evacuate(id)==3) sum(Evacuate(id)==4)];
end
Scaled_Education_ReceiveAQN = Education_ReceiveAQN ./ repmat(sum(Education_ReceiveAQN,2),1,size(Education_ReceiveAQN,2));

scatter(repmat(1:5,1,4)',[ones(1,5) 2*ones(1,5) 3*ones(1,5) 4*ones(1,5)]',3000,Scaled_Education_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 4.5])
set(gca,'xtick',1:5,'xticklabel',{['Undergrad: freshman/sophomore (',num2str(Size_Education(1)),')'], ['Undergrad: junior/senior (',num2str(Size_Education(2)),')'], ['Grad student (',num2str(Size_Education(3)),')'],['Boise State staff (',num2str(Size_Education(4)),')'],['Boise State faculty (',num2str(Size_Education(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:4,'yticklabel',{'Yes, I''ve done in the past','Yes, I would consider','No','Prefer not to answer'})
ytickangle(30);
grid on


%% Income versus willingness to evacuate home due to wildfire smoke Q7/Q26 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:5
    id = find( Income == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Evacuate(id)==1) sum(Evacuate(id)==2) sum(Evacuate(id)==3) sum(Evacuate(id)==4)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:5,1,4)',[ones(1,5) 2*ones(1,5) 3*ones(1,5) 4*ones(1,5)]',3000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 5.5 0.5 4.5])
set(gca,'xtick',1:5,'xticklabel',{['$25,000 or less (',num2str(Size_Income(1)),')'], ['$25,000 to $49,999 (',num2str(Size_Income(2)),')'], ['$50,000 to $74,999 (',num2str(Size_Income(3)),')'],['$75,000 to $100,000 (',num2str(Size_Income(4)),')'],['$100,000 or more (',num2str(Size_Income(5)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:4,'yticklabel',{'Yes, I''ve done in the past','Yes, I would consider','No','Prefer not to answer'})
ytickangle(30);
grid on


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Q28 Plot percentage of people observing any symptom
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .55 .55],'paperpositionmode','auto');
N = [sum(any(~isnan(Symptom))) sum(all(isnan(Symptom)))];
Percent = round(N*100/sum(N));
labels = {['Yes (',num2str(Percent(1)),'%)'],['No (',num2str(Percent(2)),'%)']};
pie(N,labels)
colormap([1 0 0;   %// green
          0 1 0]); % // red 
th = findall(gcf,'Type','text');
for i = 1:length(th),
    set(th(i),'fontsize',20,'fontweight','bold')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Health status versus receiving air quality information Q8/Q11 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:4
    id = find( Health == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Rec_Air_Ntfn(id)==1) sum(Rec_Air_Ntfn(id)==2)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:4,1,2)',[ones(1,4) 2*ones(1,4)]',4000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 4.5 0.5 2.5])
set(gca,'xtick',1:4,'xticklabel',{['Excellent (',num2str(Size(1)),')'],['Good (',num2str(Size(2)),')'],['Fair (',num2str(Size(3)),')'],['Poor (',num2str(Size(4)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})
ytickangle(30);
grid on


%% Health status versus seeking air quality information Q8/Q12 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:4
    id = find( Health == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Seek_Air_Ntfn(id)==1) sum(Seek_Air_Ntfn(id)==2)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:4,1,2)',[ones(1,4) 2*ones(1,4)]',4000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 4.5 0.5 2.5])
set(gca,'xtick',1:4,'xticklabel',{['Excellent (',num2str(Size(1)),')'],['Good (',num2str(Size(2)),')'],['Fair (',num2str(Size(3)),')'],['Poor (',num2str(Size(4)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})
ytickangle(30);
grid on



%% Health status versus reducing outside activities Q8/Q15 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:4
    id = find( Health == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Reduce_out_act(id)==1) sum(Reduce_out_act(id)==2) sum(Reduce_out_act(id)==3)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:4,1,3)',[ones(1,4) 2*ones(1,4) 3*ones(1,4)]',4000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 4.5 0.5 3.5])
set(gca,'xtick',1:4,'xticklabel',{['Excellent (',num2str(Size(1)),')'],['Good (',num2str(Size(2)),')'],['Fair (',num2str(Size(3)),')'],['Poor (',num2str(Size(4)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:3,'yticklabel',{'Yes','No','NA'})
ytickangle(30);
grid on


%% Health status versus min AQI to reduce outside activities Q8/Q17 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:4
    id = find( Health == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(AQI_reduce(id)==1) sum(AQI_reduce(id)==2) sum(AQI_reduce(id)==3) sum(AQI_reduce(id)==4) sum(AQI_reduce(id)==5) sum(AQI_reduce(id)==6) sum(AQI_reduce(id)==7)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:4,1,7)',[ones(1,4) 2*ones(1,4) 3*ones(1,4) 4*ones(1,4) 5*ones(1,4) 6*ones(1,4) 7*ones(1,4)]',2000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 4.5 0.5 7.5])
set(gca,'xtick',1:4,'xticklabel',{['Excellent (',num2str(Size(1)),')'],['Good (',num2str(Size(2)),')'],['Fair (',num2str(Size(3)),')'],['Poor (',num2str(Size(4)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:7,'yticklabel',{'Green-Good','Yellow-Moderate','Orange-Unhealthy for Sensitives','Red-Unhealthy','Purple-Very Unhealthy','Maroon-Hazardous','Not Familiar'})
ytickangle(30);
grid on

%% Health status versus min AQI to eliminate outside activities Q8/Q18 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:4
    id = find( Health == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(AQI_eliminate(id)==1) sum(AQI_eliminate(id)==2) sum(AQI_eliminate(id)==3) sum(AQI_eliminate(id)==4) sum(AQI_eliminate(id)==5) sum(AQI_eliminate(id)==6) sum(AQI_eliminate(id)==7)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:4,1,7)',[ones(1,4) 2*ones(1,4) 3*ones(1,4) 4*ones(1,4) 5*ones(1,4) 6*ones(1,4) 7*ones(1,4)]',2000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 4.5 0.5 7.5])
set(gca,'xtick',1:4,'xticklabel',{['Excellent (',num2str(Size(1)),')'],['Good (',num2str(Size(2)),')'],['Fair (',num2str(Size(3)),')'],['Poor (',num2str(Size(4)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:7,'yticklabel',{'Green-Good','Yellow-Moderate','Orange-Unhealthy for Sensitives','Red-Unhealthy','Purple-Very Unhealthy','Maroon-Hazardous','Not Familiar'})
ytickangle(30);
grid on

%% Health status versus taking preventive actions in the future to reduce health impacts of smoke Q8/Q23 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:4
    id = find( Health == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Preventive_Fut(id)==1) sum(Preventive_Fut(id)==2) sum(Preventive_Fut(id)==3)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:4,1,3)',[ones(1,4) 2*ones(1,4) 3*ones(1,4)]',4000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 4.5 0.5 3.5])
set(gca,'xtick',1:4,'xticklabel',{['Excellent (',num2str(Size(1)),')'],['Good (',num2str(Size(2)),')'],['Fair (',num2str(Size(3)),')'],['Poor (',num2str(Size(4)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:3,'yticklabel',{'Yes','No','Not sure'})
ytickangle(30);
grid on

%% Health status versus considering smoke as a hazard Q8/Q24 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:4
    id = find( Health == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Hazard(id)==1) sum(Hazard(id)==2) sum(Hazard(id)==3)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:4,1,3)',[ones(1,4) 2*ones(1,4) 3*ones(1,4)]',4000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 4.5 0.5 3.5])
set(gca,'xtick',1:4,'xticklabel',{['Excellent (',num2str(Size(1)),')'],['Good (',num2str(Size(2)),')'],['Fair (',num2str(Size(3)),')'],['Poor (',num2str(Size(4)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:3,'yticklabel',{'Yes','No','Not sure'})
ytickangle(30);
grid on


%% Health status versus comparing wildfire smoke to other hazards Q8/Q25 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:4
    id = find( Health == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Hazard_compare(id)==1) sum(Hazard_compare(id)==2) sum(Hazard_compare(id)==3) sum(Hazard_compare(id)==4) sum(Hazard_compare(id)==5)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:4,1,5)',[ones(1,4) 2*ones(1,4) 3*ones(1,4) 4*ones(1,4) 5*ones(1,4)]',3000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 4.5 0.5 5.5])
set(gca,'xtick',1:4,'xticklabel',{['Excellent (',num2str(Size(1)),')'],['Good (',num2str(Size(2)),')'],['Fair (',num2str(Size(3)),')'],['Poor (',num2str(Size(4)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:5,'yticklabel',{'Much less severe/important','Somewhat less severe/important','About as severe/important','Somewhat more severe/important','Much more severe/important'})
ytickangle(30);
grid on

%% Health status versus willingness to evacuate home Q8/Q26 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:4
    id = find( Health == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Evacuate(id)==1) sum(Evacuate(id)==2) sum(Evacuate(id)==3) sum(Evacuate(id)==4)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:4,1,4)',[ones(1,4) 2*ones(1,4) 3*ones(1,4) 4*ones(1,4)]',3000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 4.5 0.5 4.5])
set(gca,'xtick',1:4,'xticklabel',{['Excellent (',num2str(Size(1)),')'],['Good (',num2str(Size(2)),')'],['Fair (',num2str(Size(3)),')'],['Poor (',num2str(Size(4)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:4,'yticklabel',{'Yes, I''ve done in the past','Yes, I would consider','No','Prefer not to answer'})
ytickangle(30);
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Gender versus receiving air quality information Q3/Q11 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:3
    id = find( Gender == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Rec_Air_Ntfn(id)==1) sum(Rec_Air_Ntfn(id)==2)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:3,1,2)',[ones(1,3) 2*ones(1,3)]',6000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 3.5 0.5 2.5])
set(gca,'xtick',1:3,'xticklabel',{['Woman (',num2str(Size(1)),')'],['Man (',num2str(Size(2)),')'],['Other (',num2str(Size(3)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})
ytickangle(30);
grid on


%% Gender versus seeking air quality information Q3/Q12 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:3
    id = find( Gender == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Seek_Air_Ntfn(id)==1) sum(Seek_Air_Ntfn(id)==2)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:3,1,2)',[ones(1,3) 2*ones(1,3)]',6000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 3.5 0.5 2.5])
set(gca,'xtick',1:3,'xticklabel',{['Woman (',num2str(Size(1)),')'],['Man (',num2str(Size(2)),')'],['Other (',num2str(Size(3)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:2,'yticklabel',{'Yes','No'})
ytickangle(30);
grid on

%% Gender versus reducing outside activity Q3/Q15 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:3
    id = find( Gender == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Reduce_out_act(id)==1) sum(Reduce_out_act(id)==2) sum(Reduce_out_act(id)==3)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:3,1,3)',[ones(1,3) 2*ones(1,3) 3*ones(1,3)]',6000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 3.5 0.5 3.5])
set(gca,'xtick',1:3,'xticklabel',{['Woman (',num2str(Size(1)),')'],['Man (',num2str(Size(2)),')'],['Other (',num2str(Size(3)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:3,'yticklabel',{'Yes','No','NA'})
ytickangle(30);
grid on


%% Gender versus min AQI to reduce outside activity Q3/Q17 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:3
    id = find( Gender == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(AQI_reduce(id)==1) sum(AQI_reduce(id)==2) sum(AQI_reduce(id)==3) sum(AQI_reduce(id)==4) sum(AQI_reduce(id)==5) sum(AQI_reduce(id)==6) sum(AQI_reduce(id)==7)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:3,1,7)',[ones(1,3) 2*ones(1,3) 3*ones(1,3) 4*ones(1,3) 5*ones(1,3) 6*ones(1,3) 7*ones(1,3)]',3000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 3.5 0.5 7.5])
set(gca,'xtick',1:3,'xticklabel',{['Woman (',num2str(Size(1)),')'],['Man (',num2str(Size(2)),')'],['Other (',num2str(Size(3)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:7,'yticklabel',{'Green-Good','Yellow-Moderate','Orange-Unhealthy for Sensitives','Red-Unhealthy','Purple-Very Unhealthy','Maroon-Hazardous','Not Familiar'})
ytickangle(30);
grid on

%% Gender versus min AQI to eliminate outside activity Q3/Q18 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:3
    id = find( Gender == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(AQI_eliminate(id)==1) sum(AQI_eliminate(id)==2) sum(AQI_eliminate(id)==3) sum(AQI_eliminate(id)==4) sum(AQI_eliminate(id)==5) sum(AQI_eliminate(id)==6) sum(AQI_eliminate(id)==7)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:3,1,7)',[ones(1,3) 2*ones(1,3) 3*ones(1,3) 4*ones(1,3) 5*ones(1,3) 6*ones(1,3) 7*ones(1,3)]',3000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 3.5 0.5 7.5])
set(gca,'xtick',1:3,'xticklabel',{['Woman (',num2str(Size(1)),')'],['Man (',num2str(Size(2)),')'],['Other (',num2str(Size(3)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:7,'yticklabel',{'Green-Good','Yellow-Moderate','Orange-Unhealthy for Sensitives','Red-Unhealthy','Purple-Very Unhealthy','Maroon-Hazardous','Not Familiar'})
ytickangle(30);
grid on


%% Gender versus willingness to take preventive actions in the future Q3/Q23 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:3
    id = find( Gender == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Preventive_Fut(id)==1) sum(Preventive_Fut(id)==2) sum(Preventive_Fut(id)==3)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:3,1,3)',[ones(1,3) 2*ones(1,3) 3*ones(1,3)]',6000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 3.5 0.5 3.5])
set(gca,'xtick',1:3,'xticklabel',{['Woman (',num2str(Size(1)),')'],['Man (',num2str(Size(2)),')'],['Other (',num2str(Size(3)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:3,'yticklabel',{'Yes','No','Not sure'})
ytickangle(30);
grid on


%% Gender versus considering smoke a hazard Q3/Q24 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:3
    id = find( Gender == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Hazard(id)==1) sum(Hazard(id)==2) sum(Hazard(id)==3)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:3,1,3)',[ones(1,3) 2*ones(1,3) 3*ones(1,3)]',6000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 3.5 0.5 3.5])
set(gca,'xtick',1:3,'xticklabel',{['Woman (',num2str(Size(1)),')'],['Man (',num2str(Size(2)),')'],['Other (',num2str(Size(3)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:3,'yticklabel',{'Yes','No','Not sure'})
ytickangle(30);
grid on


%% Gender versus comparing smoke to other hazards Q3/Q25 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:3
    id = find( Gender == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Hazard_compare(id)==1) sum(Hazard_compare(id)==2) sum(Hazard_compare(id)==3) sum(Hazard_compare(id)==4) sum(Hazard_compare(id)==5)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:3,1,5)',[ones(1,3) 2*ones(1,3) 3*ones(1,3) 4*ones(1,3) 5*ones(1,3)]',3000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 3.5 0.5 5.5])
set(gca,'xtick',1:3,'xticklabel',{['Woman (',num2str(Size(1)),')'],['Man (',num2str(Size(2)),')'],['Other (',num2str(Size(3)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:5,'yticklabel',{'Much less severe/important','Somewhat less severe/important','About as severe/important','Somewhat more severe/important','Much more severe/important'})
ytickangle(30);
grid on


%% Gender versus evacuating home due to smoke Q3/Q26 % variable names are not important
clear ReceiveAQN Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
for i = 1:3
    id = find( Gender == i );
    Size(i,1) = length(id);
    ReceiveAQN(i,:) = [sum(Evacuate(id)==1) sum(Evacuate(id)==2) sum(Evacuate(id)==3) sum(Evacuate(id)==4)];
end
Scaled_ReceiveAQN = ReceiveAQN ./ repmat(sum(ReceiveAQN,2),1,size(ReceiveAQN,2));

scatter(repmat(1:3,1,4)',[ones(1,3) 2*ones(1,3) 3*ones(1,3) 4*ones(1,3)]',3000,Scaled_ReceiveAQN(:),'filled')
colormap jet; colorbar; box on
axis([0.5 3.5 0.5 4.5])
set(gca,'xtick',1:3,'xticklabel',{['Woman (',num2str(Size(1)),')'],['Man (',num2str(Size(2)),')'],['Other (',num2str(Size(3)),')']},'fontsize',26,'fontweight','bold')
xtickangle(30);
set(gca,'ytick',1:4,'yticklabel',{'Yes, I''ve done in the past','Yes, I would consider','No','Prefer not to answer'})
ytickangle(30);
grid on


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Age versus evacuating home due to smoke Q2/Q26 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),4);
for i = 1:4
    id = find( Evacuate == i );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 4.5 18 90])
set(gca,'xtick',1:4,'xticklabel',{['Yes, I''ve done in the past (',num2str(Size(1)),')'],['Yes, I would consider (',num2str(Size(2)),')'],['No(',num2str(Size(3)),')'],['Prefer not to answer(',num2str(Size(4)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on

%% Age versus comparing smoke to other hazards Q2/Q25 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),5);
for i = 1:5
    id = find( Hazard_compare == i );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 5.5 18 90])
set(gca,'xtick',1:5,'xticklabel',{['Much less severe/important (',num2str(Size(1)),')'],['Somewhat less severe/important (',num2str(Size(2)),')'],['About as severe/important (',num2str(Size(3)),')'],['Somewhat more severe/important (',num2str(Size(4)),')'],['Much more severe/important (',num2str(Size(5)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on


%% Age versus considering smoke a hazard Q2/Q24 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),3);
for i = 1:3
    id = find( Hazard == i );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 3.5 18 90])
set(gca,'xtick',1:3,'xticklabel',{['Yes (',num2str(Size(1)),')'],['No (',num2str(Size(2)),')'],['Not sure (',num2str(Size(3)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on


%% Age versus taking future preventive actions Q2/Q23 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),3);
for i = 1:3
    id = find( Preventive_Fut == i );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 3.5 18 90])
set(gca,'xtick',1:3,'xticklabel',{['Yes (',num2str(Size(1)),')'],['No (',num2str(Size(2)),')'],['Not sure (',num2str(Size(3)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on


%% Age versus timing of notification Q2/Q22 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),5);
for i = 1:5
    id = find( any(Timing_warning == i) );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 5.5 18 90])
set(gca,'xtick',1:5,'xticklabel',{['Day before (',num2str(Size(1)),')'],['Early morning, before 9 am (',num2str(Size(2)),')'],['Late morning, 9 am - noon (',num2str(Size(3)),')'],['Afternoon, noon - 5 pm (',num2str(Size(4)),')'],['Evening, after 5 pm (',num2str(Size(5)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on


%% Age versus message medium Q2/Q20 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),7);
for i = 1:7
    id = find( any( Info_mitigate == i ) );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 7.5 18 90])
set(gca,'xtick',1:7,'xticklabel',{['Text message (',num2str(Size(1)),')'],['Phone call (',num2str(Size(2)),')'],['Social media message (',num2str(Size(3)),')'],['Online message (',num2str(Size(4)),')'],['TV message (',num2str(Size(5)),')'],['Emergency alert (',num2str(Size(6)),')'],['Contact from family/friend (',num2str(Size(7)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on


%% Age versus min AQI to eliminate outdoor activity Q2/Q18 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),7);
for i = 1:7
    id = find( AQI_eliminate == i );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 7.5 18 90])
set(gca,'xtick',1:7,'xticklabel',{['Green-Good (',num2str(Size(1)),')'],['Yellow-Moderate (',num2str(Size(2)),')'],['Orange-Unhealthy for Sensitives (',num2str(Size(3)),')'],['Red-Unhealthy (',num2str(Size(4)),')'],['Purple-Very Unhealthy (',num2str(Size(5)),')'],['Maroon-Hazardous (',num2str(Size(6)),')'],['Not familiar (',num2str(Size(7)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on

%% Age versus min AQI to reduce outdoor activity Q2/Q17 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),7);
for i = 1:7
    id = find( AQI_reduce == i );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 7.5 18 90])
set(gca,'xtick',1:7,'xticklabel',{['Green-Good (',num2str(Size(1)),')'],['Yellow-Moderate (',num2str(Size(2)),')'],['Orange-Unhealthy for Sensitives (',num2str(Size(3)),')'],['Red-Unhealthy (',num2str(Size(4)),')'],['Purple-Very Unhealthy (',num2str(Size(5)),')'],['Maroon-Hazardous (',num2str(Size(6)),')'],['Not familiar (',num2str(Size(7)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on


%% Age versus reducing outside activities due to wildfire smoke Q2/Q15 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),3);
for i = 1:3
    id = find( Reduce_out_act == i );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 3.5 18 90])
set(gca,'xtick',1:3,'xticklabel',{['Yes (',num2str(Size(1)),')'],['No (',num2str(Size(2)),')'],['NA (',num2str(Size(3)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on

%% Age versus source of air quality info Q2/Q13 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),11);
for i = 1:11
    id = find( any(Source_Ntfn == i) );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 11.5 18 90])
set(gca,'xtick',1:11,'xticklabel',{['Social Media (',num2str(Size(1)),')'],['Television (',num2str(Size(2)),')'],['Online news sources (',num2str(Size(3)),')'],['Newspapers (',num2str(Size(4)),')'],['Friends or family (',num2str(Size(5)),')'],['Personal Observation (',num2str(Size(6)),')'],['State agencies (',num2str(Size(7)),')'],['Idaho smoke blog (',num2str(Size(8)),')'],['Federal sources (',num2str(Size(9)),')'],['Road signs (',num2str(Size(10)),')'],['Other (',num2str(Size(11)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on

%% Age versus seeking air quality info Q2/Q12 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),2);
for i = 1:2
    id = find( Seek_Air_Ntfn == i );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 2.5 18 90])
set(gca,'xtick',1:2,'xticklabel',{['Yes (',num2str(Size(1)),')'],['No (',num2str(Size(2)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on


%% Age versus receiving air quality info Q2/Q11 % variable names are not important
clear Age_box Size
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
Age_box = nan(length(Age),2);
for i = 1:2
    id = find( Rec_Air_Ntfn == i );
    Size(i,1) = length(id);
    Age_box(1:length(id),i) = Age(id)';
end

h = boxplot(Age_box);
set(h,{'linew'},{2})

axis([0.5 2.5 18 90])
set(gca,'xtick',1:2,'xticklabel',{['Yes (',num2str(Size(1)),')'],['No (',num2str(Size(2)),')']})
xtickangle(20);
ylabel('Age')
set(gca,'fontsize',26,'fontweight','bold')
grid on
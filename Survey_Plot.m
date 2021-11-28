
%% Q27 Plot percentage of people observing smoke-related illness
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .55 .55],'paperpositionmode','auto');
[N,X] = hist(Illness,1:3);
Percent = round(N*100/sum(N));
labels = {['Yes (',num2str(Percent(1)),'%)'],['No (',num2str(Percent(2)),'%)'],['Not sure (',num2str(Percent(3)),'%)']};
pie(N,labels)
th = findall(gcf,'Type','text');
for i = 1:length(th),
    set(th(i),'fontsize',20,'fontweight','bold')
end

%% Q27/Q8 Plot percentage of people experiencing smoke-related illness; based on
% their health conditions
id = find( Health == 1 );
[N_1,~] = hist(Illness(id),1:3);
Percent_1 = round(N_1*100/sum(N_1));

id = find( Health == 2 );
[N_2,~] = hist(Illness(id),1:3);
Percent_2 = round(N_2*100/sum(N_2));

id = find( Health == 3 );
[N_3,~] = hist(Illness(id),1:3);
Percent_3 = round(N_3*100/sum(N_3));

id = find( Health == 4 );
[N_4,~] = hist(Illness(id),1:3);
Percent_4 = round(N_4*100/sum(N_4));

Percent = [Percent_1; Percent_2; Percent_3; Percent_4];
figure;
set(gcf,'color','w','units','normalized','position',[.05 .05 .85 .85],'paperpositionmode','auto');
b = bar(Percent,'stacked');
b(1).FaceColor = 'red'; b(2).FaceColor = 'green'; b(3).FaceColor = 'yellow';
legend('Yes','No','Not sure')

xlabel('Health status'); ylabel('Illness observed (%)')
set(gca,'xticklabel',{'Excellent','Good','Fair','Poor'},'fontsize',26,'fontweight','bold')
xtickangle(30); ylim([0 100])


%% Q27/Q9 Plot percentage of people experiencing smoke-related illness; based on
% their activity
id = find( Activity == 1 );
[N_1,~] = hist(Illness(id),1:3);
Percent_1 = round(N_1*100/sum(N_1));

id = find( Activity == 2 );
[N_2,~] = hist(Illness(id),1:3);
Percent_2 = round(N_2*100/sum(N_2));

Percent = [Percent_1; Percent_2];
figure;
set(gcf,'color','w','units','normalized','position',[.05 .05 .85 .85],'paperpositionmode','auto');
b = bar(Percent,'stacked');
b(1).FaceColor = 'red'; b(2).FaceColor = 'green'; b(3).FaceColor = 'yellow';
legend('Yes','No','Not sure')

xlabel('Outside activity'); ylabel('Illness observed (%)')
set(gca,'xticklabel',{'Yes','No'},'fontsize',26,'fontweight','bold')
xtickangle(30); % xlim([0 7])


%% Q9 Having outdoor activity
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .55 .55],'paperpositionmode','auto');
[N,X] = hist(Activity,1:2);
Percent = round(N*100/sum(N));
labels = {['Yes (',num2str(Percent(1)),'%)'],['No (',num2str(Percent(2)),'%)']};
pie(N,labels)
th = findall(gcf,'Type','text');
for i = 1:length(th),
    set(th(i),'fontsize',20,'fontweight','bold')
end

%% Q11 Received air quality notification
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .55 .55],'paperpositionmode','auto');
[N,X] = hist(Rec_Air_Ntfn,1:2);
Percent = round(N*100/sum(N));
labels = {['Yes (',num2str(Percent(1)),'%)'],['No (',num2str(Percent(2)),'%)']};
pie(N,labels);
colormap([0 1 0;   %// green
          1 0 0]); % // red      
th = findall(gcf,'Type','text');
for i = 1:length(th),
    set(th(i),'fontsize',20,'fontweight','bold')
end


%% Q12 Sought air quality notification
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .55 .55],'paperpositionmode','auto');
[N,X] = hist(Seek_Air_Ntfn,1:2);
Percent = round(N*100/sum(N));
labels = {['Yes (',num2str(Percent(1)),'%)'],['No (',num2str(Percent(2)),'%)']};
pie(N,labels);
colormap([0 1 0;   %// green
          1 0 0]); % // red      
th = findall(gcf,'Type','text');
for i = 1:length(th),
    set(th(i),'fontsize',20,'fontweight','bold')
end


%% Q13 Source of air quality notification
figure
Source = Source_Ntfn(:); Source( Source == 12 ) = nan;
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
hist(Source,1:11);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'Social media','Television','Online sources','Newspapers','Friends / Family','Personal Observation','State agencies','ID smoke blog','Federal agencies','Road sign','Other'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q14 Frequency of seeking air quality info
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
hist(Freq_Seek_Air_Ntfn,1:6);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'0 days', '1 days', '2 days', '3 days', '4-5 days', '6-7 days'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q15 Reduce outside activity
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .55 .55],'paperpositionmode','auto');
[N,X] = hist(Reduce_out_act,1:3);
N( N == 0 ) = 1;
Percent = round(N*100/sum(N));
labels = {['Yes (',num2str(Percent(1)),'%)'],['No (',num2str(Percent(2)),'%)'],['Not applicable (',num2str(Percent(3)),'%)']};
pie(N,labels);
colormap([0 1 0;   %// green
          1 0 0;   % // red 
          1 1 0]); % // yellow    
th = findall(gcf,'Type','text');
for i = 1:length(th),
    set(th(i),'fontsize',20,'fontweight','bold')
end

%% Q27/Q15 Plot percentage of people experiencing smoke-related illness; based on
% reducing outside activities or not
id = find( Reduce_out_act == 1 );
[N_1,~] = hist(Illness(id),1:3);
Percent_1 = round(N_1*100/sum(N_1));

id = find( Reduce_out_act == 2 );
[N_2,~] = hist(Illness(id),1:3);
Percent_2 = round(N_2*100/sum(N_2));

Percent = [Percent_1; Percent_2];
figure;
set(gcf,'color','w','units','normalized','position',[.05 .05 .85 .85],'paperpositionmode','auto');
b = bar(Percent,'stacked');
b(1).FaceColor = 'red'; b(2).FaceColor = 'green'; b(3).FaceColor = 'yellow';
legend('Yes','No','Not sure')

xlabel('Reduced outside activity'); ylabel('Illness observed (%)')
set(gca,'xticklabel',{'Yes','No'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q16 Longest consecutive days that people reduced outside activity
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
hist(Length_reduce,1:6);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'0 days', '1-2 days', '3 days', '4 days', '5 days', '6+ days'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q17 Minimum air quality that cause people to reduce their outside activity
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
hist(AQI_reduce,1:7);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'Green', 'Yellow', 'Orange', 'Red', 'Purple', 'Maroon', 'Not familiar'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q18 Minimum air quality that cause people to eliminate their outside activity
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
hist(AQI_eliminate,1:7);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'Green', 'Yellow', 'Orange', 'Red', 'Purple', 'Maroon', 'Not familiar'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q17/Q3 Socio-background (Gender) of those not familiar with AQI
id = find( AQI_reduce == 7 );
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .55 .55],'paperpositionmode','auto');
[N,X] = hist(Gender(id),1:3);
N(N==0) = 0.1;
Percent = round(N*100/sum(N));
labels = {['Woman (',num2str(Percent(1)),'%)'],['Man (',num2str(Percent(2)),'%)'],['Other (',num2str(Percent(3)),'%)']};
pie(N,labels); 
th = findall(gcf,'Type','text');
for i = 1:length(th),
    set(th(i),'fontsize',20,'fontweight','bold')
end

%% Q17/Q4 Socio-background (ethnicity) of those not familiar with AQI
id = find( AQI_reduce == 7 );
Ethnicity = Ethnicity_multiple(:,id);
Ethnicity = Ethnicity(:);
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
hist(Ethnicity,1:6);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'White / Caucausian', 'Hispanic / Latino', 'Black / African American','Native American','Asian / Pacific Islander','Other'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q17/Q7 Socio-background (income) of those not familiar with AQI
id = find( AQI_reduce == 7 );
Income_1 = Income(id);
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
hist(Income_1,1:5);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'<$25K','$25-$50K','$50-$75K','$75-$100K','>$100K'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Socio-background (Education) of those not familiar with AQI
% id = find( AQI_reduce == 7 );
% Education_1 = Education(id);
% figure
% set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
% hist(Education_1,1:8);
% 
% %xlabel('Smoke notification source'); 
% ylabel('Frequency')
% set(gca,'xticklabel',{'8th grade or less','Some high school, no diploma','High school graduate, diploma or GED','Some college, no degree','Associate degree','Bachelor''s degree','Master''s degree','Ph.D., M.D., J.D. or similar'},'fontsize',35,'fontweight','bold')
% xtickangle(30);

%% Q19 Info that motivated to reduce their outside activity
Info_Limit_Out_1 = Info_Limit_Out(:);
Info_Limit_Out_1( Info_Limit_Out_1>7 ) = nan;
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
hist(Info_Limit_Out_1,1:7);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'Smoke-related health stat','Air quality info','Smoke forecast','Visual observation','Wildfire info','Advice from doctor','Advice from family/friends'},'fontsize',26,'fontweight','bold')
xtickangle(30);


%% Q20 Message medium that motivated to take mitigation actions
Info_mitigate_1 = Info_mitigate(:);
Info_mitigate_1( Info_mitigate_1>7 ) = nan;
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
hist(Info_mitigate_1,1:7);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'Text message','Phone call','Social media message','Online message','Television message','Emergency alerts','Contact from family/friend'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q21 Message content that motivated to take mitigation actions
Content_mitigate_1 = Content_mitigate(:);
Content_mitigate_1( Content_mitigate_1>7 ) = nan;
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
hist(Content_mitigate_1,1:7);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'Short warning (1 sentence)','Short warning with some stat','Short statement (1 par)','Visual infographic','Online Q&A','Video','Conversation'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q22 Message timing that motivated to take mitigation actions
Timing_warning_1 = Timing_warning(:);
Timing_warning_1( Timing_warning_1>5 ) = nan;
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
hist(Timing_warning_1,1:5);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'Day before','Before 9 am','9 am - noon','Noon - 5 pm','After 5 pm'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q23 Will you take preventive actions to reduce health related impacts in the future?
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .55 .55],'paperpositionmode','auto');
[N,X] = hist(Preventive_Fut,1:3);
Percent = round(N*100/sum(N));
labels = {['Yes (',num2str(Percent(1)),'%)'],['No (',num2str(Percent(2)),'%)'],['Not sure (',num2str(Percent(3)),'%)']};
pie(N,labels);
colormap([0 1 0;   %// green
          1 0 0;   % // red 
          1 1 0]); % // yellow    
th = findall(gcf,'Type','text');
for i = 1:length(th),
    set(th(i),'fontsize',20,'fontweight','bold')
end

%% Q27/Q23 Plot percentage of people experiencing smoke-related illness; based on
% their willingness to take preventive actions in the future
id = find( Preventive_Fut == 1 );
[N_1,~] = hist(Illness(id),1:3);
Percent_1 = round(N_1*100/sum(N_1));

id = find( Preventive_Fut == 2 );
[N_2,~] = hist(Illness(id),1:3);
Percent_2 = round(N_2*100/sum(N_2));

id = find( Preventive_Fut == 3 );
[N_3,~] = hist(Illness(id),1:3);
Percent_3 = round(N_3*100/sum(N_3));


Percent = [Percent_1; Percent_2; Percent_3];
figure;
set(gcf,'color','w','units','normalized','position',[.05 .05 .85 .85],'paperpositionmode','auto');
b = bar(Percent,'stacked');
b(1).FaceColor = 'red'; b(2).FaceColor = 'green'; b(3).FaceColor = 'yellow';
legend('Yes','No','Not sure')

xlabel('Take future preventive actions?'); ylabel('Illness observed (%)')
set(gca,'xticklabel',{'Yes','No','Not sure'},'fontsize',26,'fontweight','bold')
xtickangle(30); 

%% Q24 Smoke is a hazard?
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .55 .55],'paperpositionmode','auto');
[N,X] = hist(Hazard,1:3);
Percent = round(N*100/sum(N));
labels = {['Yes (',num2str(Percent(1)),'%)'],['No (',num2str(Percent(2)),'%)'],['Not sure (',num2str(Percent(3)),'%)']};
pie(N,labels);
colormap([0 1 0;   %// green
          1 0 0;   % // red 
          1 1 0]); % // yellow    
th = findall(gcf,'Type','text');
for i = 1:length(th),
    set(th(i),'fontsize',20,'fontweight','bold')
end

%% Q25 Compare smoke to other hazards
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .85],'paperpositionmode','auto');
hist(Hazard_compare,1:5);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'Much less important','Somewhat less important','About as important','Somewhat more important','Much more important'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q26 Would you consider evaluating your home
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .75 .75],'paperpositionmode','auto');
hist(Evacuate,1:4);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'Yes; done already','Yes; would do','No','No answer'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q28 Symptom?
Symptom_1 = Symptom(:);
Symptom_1( Symptom_1>15 ) = nan;
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .95 .75],'paperpositionmode','auto');
hist(Symptom_1,1:15);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'Wheezing / whistling in chest','Itchy / watery eyes','Irritated eyes','Sneezing / runny / blocked nose','Dry irritated nose / sinuses','Sore / irritated throat','Cold','Dry cough at night','Dry cough in morning','Dry cough in the day','Wet cough','Bronchitis','Asthma attack','Headaches','Fatigue'},'fontsize',26,'fontweight','bold')
xtickangle(30);

%% Q29 Mitigation actions?
Measure_1 = Measure(:);
Measure_1( Measure_1>8 ) = nan;
figure
set(gcf,'color','w','units','normalized','position',[.05 .05 .85 .75],'paperpositionmode','auto');
hist(Measure_1,1:8);

%xlabel('Smoke notification source'); 
ylabel('Frequency')
set(gca,'xticklabel',{'Medication','Wear mask','Long shower','Visit doctor','Visit doctor for lung issue','Air filtration','Public buildings','Miss work'},'fontsize',26,'fontweight','bold')
xtickangle(30);


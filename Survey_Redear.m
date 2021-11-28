clear all; clc
% Load either online (Online) or in-person interview (Interview) data
load Online



try
    data = Online;
catch
    data = Interview;
end

% Q2: Age
Age = data(3,2:end);
idx = find( ~cellfun(@isnumeric,Age) );
for i = 1:length(idx)
    Age{1,idx(i)} = nan;
end
Q2list = cell2mat(Age);
Age = Q2list;
clear i idx 

% Q3: Gender
Gender = data(4,2:end);
idx = find( ~cellfun(@isnumeric,Gender) );
for i = 1:length(idx)
    Gender{1,idx(i)} = nan;
end
Q3 = zeros(2, length(Gender));
Gender = [cell2mat(Gender);zeros(2, length(Gender))];
for i = 1:length(Gender)
    switch Gender(1, i)
        case 1 %% fenale
            Q3(1, i) = 1;
            Q3(2, i) = 0;

        case 2 %% male
            Q3(2, i) = 1;
            Q3(1, i) = 0;

        case 3 %% non binary
            Q3(1, i) = 1;
            Q3(2, i) = 1;

        %case 4 %% outlier
            %Gender(3, i) = 1;
            %Gender(1, i) = 0;
            %Gender(2, i) = 0;
    %Gender{1,idx(i)} = nan;
    end
end
Q3list  = Q3;
clear i idx Q3



% Q4: Multiple ethnicicty
Ethnicity_multiple_dummy = data(6,2:end);
Ethnicity_multiple = nan( length(Ethnicity_multiple_dummy), 15 );
for i = 1:length(Ethnicity_multiple_dummy)
    try
        dummy = str2double(strsplit(Ethnicity_multiple_dummy{1,i},','));
        Ethnicity_multiple(i,1:length(dummy)) = dummy';
    catch
        try
            Ethnicity_multiple(i,1) = cell2mat(Ethnicity_multiple_dummy(1,i));
        catch
        end
    end
end
Ethnicity_multiple = Ethnicity_multiple';
Ethnicity_multiple([2:15], :) = [];
[Q4list, other_index] = Function_list.Make_binnery(Ethnicity_multiple);
Ethnicity_fillin_dummy = cellstr(data(7,2:end));
Ethnicity_fillin_dummy_others = Ethnicity_fillin_dummy(1,other_index);
%[Final_list] = Function_list.Reader(Ethnicity_fillin_dummy_others);
disp('Please select the ethnicicty.txt')
list = Function_list.Askforfile();
[Q4list2, ~] = Function_list.Find_words(list, Ethnicity_fillin_dummy_others);
for i = 1 : length(other_index)
    Q4list(:, other_index(i)) = Q4list2(:, i);
end
clear i dummy Ethnicity_multiple_dummy list other_index Q4list2 list2 Ethnicity_fillin_dummy_others Ethnicity_fillin_dummy ...
    

% Q5: Zip code
Zip = data(8, 2:end);
idx = find( ~cellfun(@isnumeric, Zip) );
for i = 1:length(idx)
    Zip{1,idx(i)} = nan;
end
Q5list = cell2mat(Zip);
Zip = Q5list;
clear i idx 

% Q6: Education
Education = data(9, 2:end);
idx = find( ~cellfun(@isnumeric, Education) );
for i = 1:length(idx)
    Education{1,idx(i)} = nan;
end
Education = cell2mat(Education);
[Q6list] = Function_list.Make_binnery2(Education);
clear i idx 


% Q7: Income
Income = data(10, 2:end);
idx = find( ~cellfun(@isnumeric, Income) );
for i = 1:length(idx)
    Income{1,idx(i)} = nan;
end
Income = cell2mat(Income);
[Q7list] = Function_list.Make_binnery2(Income);
clear i idx 

% Q8: Health
Health = data(11, 2:end);
idx = find( ~cellfun(@isnumeric, Health) );
for i = 1:length(idx)
    Health{1,idx(i)} = nan;
end
Health = cell2mat(Health);
[Q8list] = Function_list.Make_binnery2(Health);
clear i idx 

% Q9: Activity
Activity = data(12, 2:end);
idx = find( ~cellfun(@isnumeric, Activity) );
for i = 1:length(idx)
    Activity{1,idx(i)} = nan;
end
Activity = cell2mat(Activity);
explenations_Q9 = cellstr(data(13,2:length(data)));
[Final_list] = Function_list.Reader(explenations_Q9);
% do some magic on Final_list in excel then ...
disp('Please select the activities2.txt')
list = Function_list.Askforfile();
[Q9list, ~] = Function_list.Find_words(list, explenations_Q9);
clear i idx list explenations_Q9 Final_list Activity Final_list

% Q10: Freq_Activity
Freq_Activity = data(14, 2:end);
idx = find( ~cellfun(@isnumeric, Freq_Activity) );
for i = 1:length(idx)
    Freq_Activity{1,idx(i)} = nan;
end
Freq_Activity = cell2mat(Freq_Activity);
[Q10list] = Function_list.Make_binnery2(Freq_Activity);
clear i idx 

% Q11: Received Air Quality Notification
Rec_Air_Ntfn = data(15, 2:end);
idx = find( ~cellfun(@isnumeric, Rec_Air_Ntfn) );
for i = 1:length(idx)
    Rec_Air_Ntfn{1,idx(i)} = nan;
end
Rec_Air_Ntfn = cell2mat(Rec_Air_Ntfn);
[Q11list] = Function_list.Make_binnery2(Rec_Air_Ntfn);
clear i idx 

% Q12: Sought Air Quality Notification
Seek_Air_Ntfn = data(16, 2:end);
idx = find( ~cellfun(@isnumeric, Seek_Air_Ntfn) );
for i = 1:length(idx)
    Seek_Air_Ntfn{1,idx(i)} = nan;
end
Seek_Air_Ntfn = cell2mat(Seek_Air_Ntfn);
[Q12list] = Function_list.Make_binnery2(Seek_Air_Ntfn);
clear i idx 

% Q13: Multiple source of air quality notification
Source_Ntfn_dummy = data(17,2:end);
Source_Ntfn = nan( length(Source_Ntfn_dummy), 15 );
for i = 1:length(Source_Ntfn_dummy)
    try
        dummy = str2double(strsplit(Source_Ntfn_dummy{1,i},','));
        Source_Ntfn(i,1:length(dummy)) = dummy';
    catch
        try
            Source_Ntfn(i,1) = cell2mat(Source_Ntfn_dummy(1,i));
        catch
        end
    end
end
Source_Ntfn = Source_Ntfn';
[Q13list, ~] = Function_list.Make_binnery3(Source_Ntfn);
explenations_Q13 = cellstr(data(18,2:length(data)));
[Final_list] = Function_list.Reader(explenations_Q13);
% do some magic on Final_list in excel then ...
disp('Please select the Source_Ntfn.text')
list = Function_list.Askforfile();
[Q13list2, ~] = Function_list.Find_words(list, explenations_Q13);
Q13list = [Q13list;Q13list2];
clear i list explenations_Q13 Activity Final_list Q13list2 dummy Source_Ntfn_dummy 

% Q14: Frequency of looking for air quality online
Freq_Seek_Air_Ntfn = data(19, 2:end);
idx = find( ~cellfun(@isnumeric, Freq_Seek_Air_Ntfn) );
for i = 1:length(idx)
    Freq_Seek_Air_Ntfn{1,idx(i)} = nan;
end
Freq_Seek_Air_Ntfn = cell2mat(Freq_Seek_Air_Ntfn);
[Q14list] = Function_list.Make_binnery2(Freq_Seek_Air_Ntfn);
clear i idx 

% Q15: reduce outside activity
Reduce_out_act = data(20, 2:end);
idx = find( ~cellfun(@isnumeric, Reduce_out_act) );
for i = 1:length(idx)
    Reduce_out_act{1,idx(i)} = nan;
end
Reduce_out_act = cell2mat(Reduce_out_act);
[Q15list] = Function_list.Make_binnery2(Reduce_out_act);
clear i idx 

% Q16: longest consecutive days of reducing outside activity
Length_reduce = data(21, 2:end);
idx = find( ~cellfun(@isnumeric, Length_reduce) );
for i = 1:length(idx)
    Length_reduce{1,idx(i)} = nan;
end
Length_reduce = cell2mat(Length_reduce);
[Q16list] = Function_list.Make_binnery2(Length_reduce);
clear i idx 

% Q17: Minimum AQI to reduce outside activity
AQI_reduce = data(22, 2:end);
idx = find( ~cellfun(@isnumeric, AQI_reduce) );
for i = 1:length(idx)
    AQI_reduce{1,idx(i)} = nan;
end
AQI_reduce = cell2mat(AQI_reduce);
[Q17list] = Function_list.Make_binnery2(AQI_reduce);
clear i idx 

% Q18: Minimum AQI to eliminate outside activity
AQI_eliminate = data(23, 2:end);
idx = find( ~cellfun(@isnumeric, AQI_eliminate) );
for i = 1:length(idx)
    AQI_eliminate{1,idx(i)} = nan;
end
AQI_eliminate = cell2mat(AQI_eliminate);
[Q18list] = Function_list.Make_binnery2(AQI_eliminate);
clear i idx 

% Q19: Information that convinced them to limit their outside activity
Info_Limit_Out_dummy = data(24,2:end);
Info_Limit_Out = nan( length(Info_Limit_Out_dummy), 15 );
for i = 1:length(Info_Limit_Out_dummy)
    try
        dummy = str2double(strsplit(Info_Limit_Out_dummy{1,i},','));
        Info_Limit_Out(i,1:length(dummy)) = dummy';
    catch
        try
            Info_Limit_Out(i,1) = cell2mat(Info_Limit_Out_dummy(1,i));
        catch
        end
    end
end
Info_Limit_Out = Info_Limit_Out';
[Q19list] = Function_list.Make_binnery4(Info_Limit_Out);
clear i dummy Info_Limit_Out_dummy 

% Q20: Information that motivated them to mitigate risks of smoke issues
Info_mitigate_dummy = data(25,2:end);
Info_mitigate = nan( length(Info_mitigate_dummy), 15 );
for i = 1:length(Info_mitigate_dummy)
    try
        dummy = str2double(strsplit(Info_mitigate_dummy{1,i},','));
        Info_mitigate(i,1:length(dummy)) = dummy';
    catch
        try
            Info_mitigate(i,1) = cell2mat(Info_mitigate_dummy(1,i));
        catch
        end
    end
end
Info_mitigate = Info_mitigate';
[Q20list] = Function_list.Make_binnery4(Info_mitigate);
clear i dummy Info_mitigate_dummy 

% Q21: Content that motivated them to mitigate risks of smoke issues
Content_mitigate_dummy = data(26,2:end);
Content_mitigate = nan( length(Content_mitigate_dummy), 15 );
for i = 1:length(Content_mitigate_dummy)
    try
        dummy = str2double(strsplit(Content_mitigate_dummy{1,i},','));
        Content_mitigate(i,1:length(dummy)) = dummy';
    catch
        try
            Content_mitigate(i,1) = cell2mat(Content_mitigate_dummy(1,i));
        catch
        end
    end
end
Content_mitigate = Content_mitigate';
[Q21list] = Function_list.Make_binnery4(Content_mitigate);
clear i dummy Content_mitigate_dummy 

% Q22: Timing of warning
Timing_warning_dummy = data(27,2:end);
Timing_warning = nan( length(Timing_warning_dummy), 15 );
for i = 1:length(Timing_warning_dummy)
    try
        dummy = str2double(strsplit(Timing_warning_dummy{1,i},','));
        Timing_warning(i,1:length(dummy)) = dummy';
    catch
        try
            Timing_warning(i,1) = cell2mat(Timing_warning_dummy(1,i));
        catch
        end
    end
end
Timing_warning = Timing_warning';
[Q22list] = Function_list.Make_binnery4(Timing_warning);
clear i dummy Timing_warning_dummy 

% Q23: Will you take preventive actions in the future?
Preventive_Fut = data(28, 2:end);
idx = find( ~cellfun(@isnumeric, Preventive_Fut) );
for i = 1:length(idx)
    Preventive_Fut{1,idx(i)} = nan;
end
Preventive_Fut = cell2mat(Preventive_Fut);
[Q23list] = Function_list.Make_binnery4(Preventive_Fut);
clear i idx 

% Q24: Smoke is a hazard?
Hazard = data(30, 2:end);
idx = find( ~cellfun(@isnumeric, Hazard) );
for i = 1:length(idx)
    Hazard{1,idx(i)} = nan;
end
Hazard = cell2mat(Hazard);
[Q24list] = Function_list.Make_binnery4(Hazard);
clear i idx 

% Q25: Compare smoke to other hazards
Hazard_compare = data(31, 2:end);
idx = find( ~cellfun(@isnumeric, Hazard_compare) );
for i = 1:length(idx)
    Hazard_compare{1,idx(i)} = nan;
end
Hazard_compare = cell2mat(Hazard_compare);
[Q25list] = Function_list.Make_binnery4(Hazard_compare);
clear i idx 

% Q26: Evacuate?
Evacuate = data(32, 2:end);
idx = find( ~cellfun(@isnumeric, Evacuate) );
for i = 1:length(idx)
    Evacuate{1,idx(i)} = nan;
end
Evacuate = cell2mat(Evacuate);
[Q26list] = Function_list.Make_binnery4(Evacuate);
clear i idx 

% Q27: Illness?
Illness = data(33, 2:end);
idx = find( ~cellfun(@isnumeric, Illness) );
for i = 1:length(idx)
    Illness{1,idx(i)} = nan;
end
Illness = cell2mat(Illness);
[Q27list] = Function_list.Make_binnery4(Illness);
clear i idx 

% Q28: Symptom
Symptom_dummy = data(34,2:end);
Symptom = nan( length(Symptom_dummy), 15 );
for i = 1:length(Symptom_dummy)
    try
        dummy = str2double(strsplit(Symptom_dummy{1,i},','));
        Symptom(i,1:length(dummy)) = dummy';
    catch
        try
            Symptom(i,1) = cell2mat(Symptom_dummy(1,i));
        catch
        end
    end
end
Symptom = Symptom';
[Q28list] = Function_list.Make_binnery4(Symptom);
clear i dummy Symptom_dummy 

% Q29: Measures taken to reduce symptoms
Measure_dummy = data(35,2:end);
Measure = nan( length(Measure_dummy), 15 );
for i = 1:length(Measure_dummy)
    try
        dummy = str2double(strsplit(Measure_dummy{1,i},','));
        Measure(i,1:length(dummy)) = dummy';
    catch
        try
            Measure(i,1) = cell2mat(Measure_dummy(1,i));
        catch
        end
    end
end
Measure = Measure';
[Q29list] = Function_list.Make_binnery4(Measure);
clear i dummy Measure_dummy  

% Ethnicity
% Ethnicity = data(6,2:end);
% idx = find( ~cellfun(@isnumeric,Ethnicity) );
% id_empty = find( cellfun(@strcmp, Ethnicity, repmat( empty, 1, length(Ethnicity))) );
% for i = 1:length(idx)
%     Ethnicity{1,idx(i)} = nan;
% end
% Ethnicity = cell2mat(Ethnicity);
% ID_multiple_Ethnicity = setdiff(idx,id_empty);
% clear i idx



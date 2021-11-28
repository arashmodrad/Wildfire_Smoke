classdef Function_list
    methods(Static)
          function Activity_cat = Activity_handel(act)
              Activity_cat = ~cellfun('isempty',regexp(explenations_Q9,act));
          end
          %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          function [list] = Askforfile()
          [file,path] = uigetfile('*.txt');
          if isequal(file,0)
             disp('User selected Cancel');
          else
             disp(['User selected ', fullfile(path,file)]);
          end
          list = readtable(fullfile(path,file),'ReadVariableNames',false);
          list = table2cell(list);
          end
          %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          function [Final_list, list_Char_refined] = Reader(list)
                list_STR = lower(string(list));
                list_STR =list_STR(~cellfun('isempty',list_STR));
                list_Merged= join(list_STR);
                junks = [",", ".", "'", "(", ")", "etc", "i.e.", "&", "-", "yes", "1", ...
                     "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "!", "?", ";",...
                      "+",];
                list_Merged = erase(list_Merged,junks);
                list_Merged = strrep( list_Merged, '/', ' ' );
                list_Char = char(list_Merged);
                list_Char_refined = strjoin(unique(strsplit(list_Char,' '),'stable'),' ');
                ind_space=find(list_Char_refined==' ');
                firstword = list_Char_refined(1:ind_space(1)-1);
                Final_list(1,1) = string(firstword);
                for i = 1 : length(ind_space)-1
                    nextword = list_Char_refined(ind_space(i):ind_space(i+1));
                    Final_list(i+1) = string(nextword);
                    %%list_Char = erase(list_Char,firstword);                    
                end
                Final_list = Final_list';
          end
          %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          function [Qlist, list] = Find_words(list, List_STR)
              List_STR = lower(string(List_STR));
              junks = [",", ".", "'", "(", ")", "etc", "i.e.", "&", "-", "yes", "1", ...
                     "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "!", "?", ";",...
                      "+",];
              List_STR = erase(List_STR,junks);
              List_STR = strrep(List_STR, '/', ' ' );
              list_Char = char(List_STR);
              [row, col] = size(list);
              list = string(list);
              for ii = 1 : row
                  for jj = 1 : col
                      if list(ii, jj) == ""
                          list(ii, jj) = "1111111111";
                      end
                  end
              end
              Qlist = zeros(row, length(List_STR));
              for i = 1:length(List_STR)
                  for j = 1:row
                      for k = 1:col
                          if (contains(list_Char(:,:,i),list(j,k))) 
                              Qlist (j,i) = 1;
                          end
                      end
                  end
              end
          end
          %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          function [Qlist, other_index] = Make_binnery(list)
              M = max(list)-1;
              Qlist = zeros(M, length(list));
              for i = 1 : length(list)
                  if (list(1,i) == max(list))
                      continue;
                  elseif (isnan(list(1,i))) 
                      continue;
                  else
                      Qlist(list(1,i), i) = 1;
                  end
              end
              %%find others
              other_index = find(list == max(list));
          end
          %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          function [Qlist] = Make_binnery2(list)
              M = max(list);
              Qlist = zeros(M, length(list));
              for i = 1 : length(list)
                  if (isnan(list(1,i))) 
                      continue;
                  else
                      Qlist(list(1,i), i) = 1;
                  end
              end
          end
          %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          function [Qlist, other_index] = Make_binnery3(list)
              [row, col] = size(list);
              M = max(max(list)) - 1;
              Qlist = zeros(M, col);
              for i = 1 : col
                  if (max(list(:, i)) == (M + 1))
                      continue;
                  elseif (isnan(list(1, i))) 
                      continue;
                  else
                      for j = 1 : row
                          if (isnan(list(j, i)))
                              break;
                          elseif (list(j, i) == (M + 1))
                              continue;
                          else
                              Qlist(list(j, i), i) = 1;
                          end
                      end
                  end
              end
              %%find others
              other = nan(1, col);
              for i = 1 : col
                  for j = 1 : row
                      if (isnan(list(j, i)))
                          break;
                      elseif (list(j, i) == (M + 1))
                          other(1, i) = (M + 1);
                      end
                  end
              end
              other_index = find(list == (M + 1));
          end
          %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          function [Qlist] = Make_binnery4(list)
              [row, col] = size(list);
              M = max(max(list));
              Qlist = zeros(M, col);
              for i = 1 : col
                  if (isnan(list(1,i))) 
                      continue;
                  else
                      for j = 1 : row
                          if (isnan(list(j,i)))
                              break;
                          else
                              Qlist(list(j,i), i) = 1;
                          end
                      end
                  end
              end
          end
          %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    end
end


%Then you can simply call the sub-functions like this:
%Activity_cat = Function_list.Activity_handel(act);
%[Final_list] = Function_list.Reader(lsit);
%Qlist = Function_list.Find_words(list, List_STR);
%[Qlist, other_index] = Function_list.Make_binnery(list);
%[Qlist] = Function_list.Make_binnery2(list);


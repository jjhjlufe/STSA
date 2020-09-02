%  Sine Tree-Seed Algorithm (STSA)
%  
%  Source code v1.0
%
%  Main Paper:
%   Jianhua Jiang, Meirong Xu, Xianqiu Meng, Keqin Li,
%   STSA: A sine Tree-Seed Algorithm for complex continuous optimization problems,
%   Physica A: Statistical Mechanics and its Applications,
%   Volume 537,
%   2020,
%   122802,
%   https://doi.org/10.1016/j.physa.2019.122802.
%______________________________________________________________________________________________

clear all 

SearchAgents_no=30; % Number of search agents

Max_iteration=500; % Maximum numbef of iterations

seeds_lb=ceil(SearchAgents_no*0.1);% upper limit of seed's number
seeds_ub=ceil(SearchAgents_no*0.25);% lower limit of seed's number

ST=0.4;
run_time_of_each=zeros(23,50);%The time of each run
run_results=zeros(23,50);%The results of each run

for f=1:2
    Function_name=strcat('F',num2str(f)); % Name of the test function that can be from F1 to F23
    for i=1:1

    [lb,ub,dim,fobj]=Get_Functions_details(Function_name);% Load details of the selected benchmark function
   [Best_score1,Best_pos1,cg_curve1,time]=STSA(SearchAgents_no,Max_iteration,lb,ub,dim,fobj); % call STSA algorithm

    run_results(f,i)=Best_score1;
    run_time_of_each=time;
    


    display(['The best optimal value of the objective funciton found by STSA is : ', num2str(Best_score1)]);
    end;
end;




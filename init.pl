% Author: Tushar Semwal (semwaltushar@gmail.com)
% Date: 07-Jul-16

%% Assert the neighbour map %%
ngbh_list(p1,1,localhost,7002).
ngbh_list(p2,1,localhost,7001).
ngbh_list(p2,2,localhost,7003).
ngbh_list(p3,1,localhost,7002).
ngbh_list(p3,2,localhost,7004).
ngbh_list(p4,1,localhost,7003).
ngbh_list(p4,2,localhost,7005).
ngbh_list(p5,1,localhost,7004).
ngbh_list(p5,2,localhost,7006).
ngbh_list(p6,1,localhost,7005).
ngbh_list(p6,2,localhost,7007).
ngbh_list(p7,1,localhost,7006).
%% ======================== %%

%% Assert neighbour count %%
ngbh_count(2).
%% ====================== %%



main(Ip,Port,Token,ServerIp,ServerPort):-
        consult('platform.pl'),
        platform_start(Ip,Port),
        Num is Port-7000,
        atom_number(A,Num),
        atom_concat(p,A,Anew),
        assert(node_name(Anew)),
        %set_token(Token),
        %set_log_server(ServerIp,ServerPort),
        %set_server_Ip(ServerIp),
        %set_server_Port(ServerPort),
        window_title(_,Port),!.
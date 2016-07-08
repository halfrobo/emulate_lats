% Author: Tushar Semwal (semwaltushar@gmail.com)
% Date: 07-Jul-16

:-dynamic(random_crowd/3).
crowd_agent_handler(guid,(_,_),main):-
                                      node_name(Name),writeln('Agent at Pi-Node --> ':Name),
                                      ngbh_count(NC),random_between(1,NC,R),
                                      ngbh_list(Name,R,NIp,NP),writeln('Moving to Port --> ':NP),sleep(1),
                                      atom_string(Name,Name1),string_concat(Name1,'.txt',Filename), write(Filename),
                                      open(Filename,append,S),
                                      get_time(T),write(S,T),write(S,','),write(S,guid),write(S,','),write(S,Name),nl(S),
                                      close(S),
                                      agent_move(guid,(NIp,NP)),!.

:-dynamic(release_user/1).
release_user(Username):-
                        platform_port(Port),agent_create(Username,(localhost,Port),random_crowd),
                        add_token(Username,[1111]),
                        agent_execute(Username,(localhost,Port),random_crowd),!.
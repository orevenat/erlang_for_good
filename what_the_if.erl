-module(what_the_if).
-export([heh_fine/0, oh_god/1, help_me/1]).

heh_fine() ->
	if 1 =:= 1 ->
			 works
	end,
	if 1 =:= 2; 1 =:= 1 ->
			 works
	end,
	if 1 =:= 2, 1 =:= 1 -> % (1)
			 fails
	end.


oh_god(N) ->
	if N =:= 2 -> might_succeed; % может сработает
		 true    -> always_does    % всегда срабатывает
		 %% true -- это способ написать 'else' в Erlang
	end.

help_me(Animal) ->
	Talk = if Animal == cat  -> "meow"; % мяу
					  Animal == beef -> "mooo"; % му
						Animal == dog  -> "bark"; % гав
						Animal == tree -> "bark"; % кора дерева
						true           -> "fgdadfgna"
					end,
	{Animal, "говорит " ++ Talk ++ "!"}.

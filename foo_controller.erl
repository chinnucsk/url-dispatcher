%%% @author Knut Nesheim <knutin@gmail.com>
%%% @copyright (C) 2010, Knut Nesheim
%%% @doc
%%% Example controller (or view in Django-terms)
%%% @end
%%% Created : 14 Aug 2010 by Knut Nesheim <knutin@gmail.com>

-module(foo_controller).

-export([show/2,
         show/3,
         test/1]).

show(_Request, Id) ->
    PageUrl = reverse:reverse(urlconf:urlconf(), ?MODULE, show, ["123", "3"]),
    {ehtml, [
             {h1, [], io_lib:format("Showing foo with Id ~p.", [Id])},
             {p, [], [{a, [{href, PageUrl}]}, "Page 3"]}
            ]}.

show(_Request, Id, Page) ->
    {ehtml, io_lib:format("Showing foo with Id ~p and Page ~p", [Id, Page])}.

test(_Request) ->
    {ehtml, "test"}.


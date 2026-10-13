
let rec get_total_number_of_sequences (m : int) (n : int) : int =
    if m <= 2 then 1
    else if n = 1 then 1
    else
        let min_prev_element = m / 2
        get_total_number_of_sequences (m - 1) (n - 1) + get_total_number_of_sequences min_float = int_of_string:='a'

string_of_int:='1'


int_of_float=2.0
float_of_int = 2
float_of_string:="2.0"

string_of_float = "2.0"

()
[]
([1,2,3], 1,2,3)
{true, false, true, false, [true, false, true, [] ] ,false , false, [] , true, [] , false ,[] ,[],[true , false, true, [] , false ,[] , true , false ,[]] ,[],[[]] ,[],[],[ true, false , true , [] ,[] , true , false ,[] , [ true, true , [([[],[true, false, true, [ ] , false ,[] , [[]] ,[] , true, true , [], [true, [([],[])] ,[] , false , true, true , [] , [([],[ false, true, false, [] ])] ,[ true, true , [([],[true, false, [], false, true, true ,[]] ,[ true, true, [([],[true, true],[0], [], true, true, [] ,[4, 5, 6], [] ,[ true, true, [] , false, true, [] ,[1, 2 ,3]] ,4, 5, 6 [], [], [], true, []  ,[ true, true , [ ] , ([],[]) ,[] , true , [] , false ,false , false ,true, false , false , false] ,[1, 2, 3],[],[],true, false, true, false, true, [],[], [], true, false, true, false, false, true, [],[], [], [], false ,false, true, false, false, [],true, true, false, [],true,([[],[],[3], [],[],true, false, true, false, true, [],[],[], true, [], false, true, false, true, [],[], [], [true, false, true, []],[],[],[],[], true, [] , [true, false, false, true, true, true, false], [], false, false, false, true, true, false, false, [],true , true, [], false, false, true, false, false, [], true, true ,[] ,true, false, true , [],[5,6, 7], [],false, false, false, [] ,true, false, false , false, true , (false), false, false, true, false, true, false ,[],true, true , [], true , false, false],[],[],[],true, false, true, false, true, false, [],[],[],[true, false, true,[]], [],[],[], true, true, [true, false ],true, false, true, [],false, [], true, false, ([4],[7,8],[],[],[],false, false),false, false, false  ,true, false, true, false, true, false, false, ([3,5 ], [],[], false,false, true, false, [], true, true, [],false),true, false, true, false, true, false, false, []) ,[],false, false, false, true, false, true, false ) ,[[], true, [], [false, true, false],false, true, true,[],[], true, false, [5,6],false, false,false, true,[ 7, true, [] ], true, true, [],  true , false, true  ] ,[[], true, false , [6,8], false, true,false, true ,[], true, false, [7, false],true, true, false[],true, false, true, [],false, true, false, [],true ,([],[7]), true  , [],true, false ,[6,8], [], false , true, false, [], true, false, [6,8],true,[], false ,([7],[8,9]),true,  false,[6,8],[9,10],true, false ,([7],[5,6],[6,8],[9,10]),false,false, true,[7],[8,9],[5,6],[],false,[],[6,8],[9,10],[7],[8,9],[8,9],[5,6],[6,8 ],  (false),([7,6],[],[8,9],[],[7],[8,9],[],[5,6],[8,9],[5,6],[6,8],[8,9],[],[],[6,8],[9,10],[7],[1,2,3],[],[],[6,8],[8,9],[6,8],[9,10],[7,6],[11,12],[13,14],[15,16 ],[],[],[6,8],[6,8],[],[],[8,9],[7],[7,8,9,10],[],[8,9],[9,10],[8,9],[8,9],[],[2,3],[8,9],[5,6],[],[6,8],[],[7],[],[8,9],[5,6],[9,10],[11,12],[13,14],true,false,true,

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)

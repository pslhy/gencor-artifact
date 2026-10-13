let rec cummulative_sum (test_list : int list list) : int =
    match test_list with
    | [] -> 0
    | hd :: tl -> List.fold_left ( + ) 0 hd + cummulative_sum tl

(* Test Cases *)
let test1 = [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]]
let test2 = [[5; 10]; [15; 20]; [25; 30]]
let test3 = [[0; 0]; [0; 0]; [0; 0]]

assert(cummulative_sum test1 = 45);;
assert(cummulative_sum test2 = 90);;
assert(cummulative_sum test3 = 0);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the cumulative sum of all the values that are present in the given list of lists. *)

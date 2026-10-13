
let rec max_of_nth (test_list : int list list) (n : int) : int = 
    (* base case: if only one item in the list, return the max *)
    if List.length test_list = 1 then
        let item = List.nth test_list 0 in
        let list_n = List.nth item n in
        list_n
    else
        (* recursive case: find the max of the current n'th element and the remaining elements *)
        let curr_max = List.nth test_list 0 in
        let list_n = List.nth curr_max n in
        let max_rest = max_of_nth (List.tl test_list) n in
        if list_n > max_rest then
            list_n
        else
            max_rest

(* test the function *)
let test_list = [[1;2;3];[4;5;6];[7;8;9]]
let max_value = max_of_nth test_list 2
Printf.printf "Max of 2nd column: %d\n" max_of_nth test_list 2;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)

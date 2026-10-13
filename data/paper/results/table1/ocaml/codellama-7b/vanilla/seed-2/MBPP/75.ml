let rec find_tuples (test_list :  (int * int * int) list) (k : int) :  (int * int * int) list =
    match test_list with
    | [] -> []
    | (x, y, z)::tail ->
        if (x mod k = 0 && y mod k = 0 && z mod k = 0) then
            (x, y, z) :: find_tuples tail k
        else find_tuples tail k in

let test_data : int * int * int list = (5, 6, 7);;
let result = find_tuples test_data 10;;
assert (result = [(15, 60, 70), (30, 24, 21)]);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find tuples which have all elements divisible by k from the given list of tuples. *)

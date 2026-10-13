(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of tuples, write a function that returns the first value of the tuple with the smallest second value. *)
let rec index_minimum (test_list :  (string * int) list) : string = 
    (* returns the index of the tuple with the smallest value of second element in the tuple *)
    let rec helper (index : int) (current_minimum : int) : int = 
        (* returns the list value with the smallest second element *)
        match test_list with 
        | [] -> current_minimum 
        | (s, n) :: tail -> if n <= current_minimum then helper (index + 1) n tail
        else helper (index + 1) current_minimum tail
    in helper 0 max_int


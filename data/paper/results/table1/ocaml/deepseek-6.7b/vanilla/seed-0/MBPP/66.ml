let rec pos_count (list : int list) : int =
    match list with
    | [] -> 0
    | h::t when h > 0 -> 1 + pos_count t
    | _::t -> pos_count t

let test_list = [1; 2; 3; -2; -1; 4; 0; 10; -7; 5]

let result = pos_count test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of positive numbers in a list. *)

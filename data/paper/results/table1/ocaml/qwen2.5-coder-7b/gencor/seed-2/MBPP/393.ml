
let rec max_length_list (input_list : int list list) :  int * int list = 
    let rec find_max_length_pair (accum : int * int list) (lst : int list list) : int * int list =
      match lst with
      | [] -> accum
      | h::t -> if (List.length h) > (fst accum) then find_max_length_pair (h, h) t else find_max_length_pair accum t
    in
    let max_list = find_max_length_pair ([], []) input_list in
    match max_list with
    | (_, lst) -> lst

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)

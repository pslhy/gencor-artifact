let rec max_length_list (input_list : int list list) :  int * int list = 
    let rec find_max_length_pair (accum : int * int list) (lst : int list list) : int * int list =
      match lst with
      | [] -> accum
      | h::t -> if (length h) > (fst accum) then find_max_length_pair (length h, h) t else find_max_length_pair accum t
    in
    snd (find_max_length_pair (0, []) input_list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)

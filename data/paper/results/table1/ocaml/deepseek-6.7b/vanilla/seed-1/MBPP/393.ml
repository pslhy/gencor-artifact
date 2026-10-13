let rec max_length_list (input_list : int list list) :  int * int list =
  match input_list with
  | [] -> raise (Invalid_argument "List cannot be empty")
  | [[]] -> (0, [])
  | h::t ->
     let (len, lst) = max_length_list t in
     if (List.length h) > len then (List.length h, h) 
     else (len, lst)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)

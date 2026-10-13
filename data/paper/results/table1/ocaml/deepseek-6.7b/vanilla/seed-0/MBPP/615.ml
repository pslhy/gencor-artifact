let rec average_tuple (nums : int list list) : float list =
    match nums with 
    | [] -> []
    | h::t -> (List.fold_left (+) 0 h) / (List.length h) :: average_tuple t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes a lists of lists and returns the average value for each sublist as a list. *)

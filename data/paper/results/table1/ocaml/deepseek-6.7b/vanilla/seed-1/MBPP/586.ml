let rec split_Arr (l : int list) (n : int) : int list =
  match l with
  | [] -> []
  | h::t -> (List.rev (List.tl (List.rev (List.split_at (List.rev t) n))) ) @ [h]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)

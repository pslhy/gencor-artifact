let rec group_tuples (input : string list list) : string list list =
  match input with
  |[] -> []
  |(h::t) -> (h, (group_tuples (List.filter (fun sublist -> not (List.mem h sublist)) input)))::t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)

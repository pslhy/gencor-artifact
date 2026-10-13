let rec sort_sublists (input_list : string list list) : string list list =
  match input_list with
  | [] -> []
  | [x] -> [List.sort x]
  | _ :: tail -> sort_sublists tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort each sublist of strings in a given list of lists. *)

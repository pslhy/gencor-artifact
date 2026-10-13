let rec sample_nam (sample_names : string list) : int = 
  let filter_names = List.filter (fun x -> x = (String.capitalize_ascii x)) sample_names in
  List.fold_left (fun acc x -> acc + String.length x) 0 filter_names


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum the length of the names of a given list of names after removing the names that start with a lowercase letter. *)

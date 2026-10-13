let rec text_starta_endb (text : string) : bool =
  match text with
  | "" -> false
  | str when str.[0] = 'a' && str.[String.length str - 1] = 'b' -> true
  | _ :: rest -> text_starta_endb (String.sub rest 1 (String.length rest - 1))
  | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)

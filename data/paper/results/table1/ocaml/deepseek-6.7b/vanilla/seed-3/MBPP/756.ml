let rec text_match_zero_one (text : string) : bool =
  try
    let pos = String.index text 'a' in
    let next_pos = String.index_from text (pos + 1) 'b' in
    next_pos > pos + 1
  with
  | Not_found -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)

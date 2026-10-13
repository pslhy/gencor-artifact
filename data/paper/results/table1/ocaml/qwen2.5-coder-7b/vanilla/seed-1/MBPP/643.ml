let rec text_match_wordz_middle (text : string) : bool = 
  let rec check (text: string) (start: int) (end_: int) : bool =
    if start >= end_ then true
    else if text.[start] = 'z' && start != 0 && start != end_ - 1 then false
    else check text (start + 1) end_
  in
  check text 0 (String.length text - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)

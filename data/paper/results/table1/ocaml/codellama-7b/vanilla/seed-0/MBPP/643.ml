let rec text_match_wordz_middle (text : string) : bool =
  match text with
  | "" -> false
  | _ ->
    let rec aux (i : int) (text : string) : bool =
      if i = String.length text then
        false
      else if text.[i] = 'z' then
        aux (i + 1) text
      else
        true
    in
    aux 0 text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)

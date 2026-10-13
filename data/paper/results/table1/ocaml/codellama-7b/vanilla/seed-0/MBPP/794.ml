let rec text_starta_endb (text : string) : bool =
  match text with
  | "" -> false
  | _ ->
    let rec aux (i : int) : bool =
      if i = String.length text - 1 then
        text.[i] = 'b'
      else if text.[i] = 'a' then
        aux (i + 1)
      else
        false
    in
    if text.[0] = 'a' then
      aux 1
    else
      false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)

let rec text_starta_endb (text : string) : bool =
  match text with
  | "" -> false
  | _ ->
      let head = String.sub text 0 1 in
      let tail = String.sub text 1 (String.length text - 1) in
      if head = "a" && text_endb tail then
        true
      else
        text_starta_endb tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)

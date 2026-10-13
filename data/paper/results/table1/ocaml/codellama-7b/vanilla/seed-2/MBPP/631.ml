let rec replace_spaces (text : string) : string =
  match text with
  | "" -> ""
  | _ ->
    let head = String.sub text 0 1 in
    let tail = String.sub text 1 (String.length text - 1) in
    if head = " " then
      "_" ^ replace_spaces tail
    else if tail = " " then
      replace_spaces head ^ "_"
    else
      head ^ replace_spaces tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)

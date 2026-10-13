let rec string_to_list (string : string) : string list =
  if String.length string = 0 then
    []
  else
    let index = String.index string ' ' in
    let head = String.sub string 0 index in
    let tail = string_to_list (String.sub string (index + 1) (String.length string - index - 1)) in
    head :: tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)

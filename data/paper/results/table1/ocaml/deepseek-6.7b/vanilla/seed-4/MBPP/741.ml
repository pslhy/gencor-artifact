let rec all_Characters_Same (s : string) : bool =
  let len = String.length s in
  if len = 0 then true
  else if len = 1 then true
  else 
    let first_char = String.get s 0 in
    let rest_string = String.sub s 1 (len - 1) in
    if String.index_opt rest_string first_char = None then false
    else all_Characters_Same rest_string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)

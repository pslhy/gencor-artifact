let rec snake_to_camel (word : string) : string =
  if word = "" then ""
  else
    let (x, y, z) = word in
    if y = '_' then
      x :: snake_to_camel (String.sub word 1 (String.length word - 1))
    else
      x :: snake_to_camel (String.sub word 0 (String.length word - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)

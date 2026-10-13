(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
let rec extract_values (text : string) : string list =
  let start = String.index text '"' in
  let stop = String.rindex text '"' in
  if start >= stop then []
  else
    let value = String.sub text (start + 1) (stop - start - 1) in
    [value] @ extract_values (String.sub text (stop + 1) (String.length text - stop - 1))


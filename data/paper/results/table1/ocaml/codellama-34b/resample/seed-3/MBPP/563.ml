(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
let rec extract_values (text : string) : string list =
  if String.length text <= 1 then
    []
  else if text.[0] = '"' then
    let last_quote_ind = String.index text '"' in
    String.sub text 1 (last_quote_ind - 1) :: extract_values (String.sub text (last_quote_ind + 1) (String.length text - last_quote_ind - 1))
  else
    []


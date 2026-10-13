let rec check_integer (text : string) : bool =
  if text = "" then false
  else
    let is_digit = text.[0] >= '0' && text.[0] <= '9'
    and is_int = check_integer (String.sub text 1 (String.length text - 1))
    in
      is_digit && is_int


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)

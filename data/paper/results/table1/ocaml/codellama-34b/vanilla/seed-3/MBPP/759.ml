let rec is_decimal (num : string) : bool =
  if num = "" then false
  else
    let (x, y) = (num.[0], num.[1]) in
    if x = '.' && y = '.' then false
    else if x = '.' || y = '.' then is_decimal (num.[1..])
    else if x = '-' || x = '+' then is_decimal (num.[1..])
    else if not (x >= '0' && x <= '9') then false
    else is_decimal (num.[1..])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)

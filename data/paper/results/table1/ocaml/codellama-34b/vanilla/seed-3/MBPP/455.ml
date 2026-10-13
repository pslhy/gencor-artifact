let rec check_monthnumb_number (monthnum2 : int) : bool =
  if monthnum2 = 1 || monthnum2 = 3 || monthnum2 = 5 || monthnum2 = 7 || monthnum2 = 8 || monthnum2 = 10 || monthnum2 = 12 then
    true
  else
    false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 31 days or not. *)

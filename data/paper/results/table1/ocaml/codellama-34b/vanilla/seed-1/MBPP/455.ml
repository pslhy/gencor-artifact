let rec check_monthnumb_number (monthnum2 : int) : bool =
    let monthnum = abs monthnum in
    if monthnum = 1 || monthnum = 3 || monthnum = 5 || monthnum = 7 || monthnum = 8 || monthnum = 10 then
        true
    else
        false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 31 days or not. *)

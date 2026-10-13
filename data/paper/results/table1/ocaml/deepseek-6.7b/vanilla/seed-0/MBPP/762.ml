let rec check_monthnumber_number (monthnum3 : int) : bool =
    if monthnum3 = 4 || monthnum3 = 6 || monthnum3 = 9 || monthnum3 = 11 then
        true
    else if monthnum3 >= 1 && monthnum3 <= 12 then
        false
    else
        check_monthnumber_number (monthnum3 - 12)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12. *)

let rec check_monthnumber_number (monthnum3 : int) : bool =
    let monthnum = abs monthnum in
    if monthnum = 2 || monthnum = 4 || monthnum = 6 || monthnum = 9 || monthnum = 11 then true
    else
        false;;

check_monthnumber_number (3);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12. *)

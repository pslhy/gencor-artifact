let rec check_monthnumb_number (monthnum2 : int) : bool = 
    (*
     * This function takes a month number as input and returns `true` if it has 31 days, `false` otherwise.
     * We check if the month number is valid before processing it.
     * If the month number is invalid, we raise an exception.
     * We then check if the month number is a multiple of 31. If it is, we return `true`, otherwise we return `false`.
     *)
    if monthnumb <= 0 || monthnumb > 12 then
        invalid_arg (Format.sprintf "Invalid month number: %d" monthnumb)
    if monthnumb mod 31 == 0 then
        true
    else
        false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 31 days or not. *)

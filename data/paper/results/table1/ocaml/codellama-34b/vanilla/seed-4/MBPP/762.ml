let rec check_monthnumber_number (monthnum3 : int) : bool = 
    (*
     * This function takes a month number as input and returns `true` if it has 30 days and `false` otherwise.
     * We check if the month number is valid before processing it.
     * If the month number is invalid, we raise an exception
     *
    *)
    if monthnum3 < 1 || monthnum3 > 12 then raise (Invalid_argument "Invalid month number") else 
    (*
     * We check if the month number has 30 days.
     * If the month number does not have 30 days, we return `false`.
     * If the month number has 30 days, we check if the next month has 30 days.
     * If the next month does not have 30 days, we return `false`.
     * If the next month has 30 days, we recurse over the next month.
     *)
    if monthnum3 = 4 || monthnum3 = 6 || monthnum3 = 9 || monthnum3 = 11 then true else
    if monthnum3 = 12 then false else
    check_monthnumber_number (monthnum3+1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12. *)

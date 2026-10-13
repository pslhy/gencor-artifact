
let rec find_solution (a : int) (b : int) (n : int) :  int * int option = 
    (* base case: a = 0 and b = 0 *)
    if a = 0 && b = 0 then
        raise (Invalid_argument "a and b cannot both be 0")
    else if a = 0 && b <> 0 then
        find_solution b a n
    else if a <> 0 && b = 0 then
        Some (0, n / a)
    else
        let divisor = if a > b then a else b in
        let quotient = n / divisor in
        let remainder = n - divisor * quotient in
        if remainder = 0 then
            Some (quotient, 0)
        else
            find_solution divisor remainder n

let find_solution a b n =
    if (a > 0 && b < 0) || (a < 0 && b > 0) then
        raise (Invalid_argument "a and b cannot have different signs")
    else if a = 0 && b = 0 then
        raise (Invalid_argument "a and b cannot both be 0")
    else
        find_solution a b n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)

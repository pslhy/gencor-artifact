(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    if startnum > endnum then []
    else if isDivisibleByDigits startnum then
        startnum :: divisible_by_digits (startnum + 1) endnum
    else
        divisible_by_digits (startnum + 1) endnum

and isDivisibleByDigits (n : int) : bool =
    let digits = List.map (fun c -> int_of_char c - int_of_char '0') (string_of_int n) in
    List.for_all (fun digit -> n mod digit = 0) digits
;;


let rec validate (n : int) : bool = 
    (* Get the unit digit in base 10 *)
    let (unit_digit, _) = n mod 10 in
    (* Remove the unit digit by dividing by 10 *)
    let modified_n = n / 10 in
    (* If the integer is less than 10, then return true *)
    if modified_n < 10 then true
    (* Otherwise, get the frequency of the unit digit in the modified integer *)
    else let freq = modified_n / 10 ** (unit_digit - 1) mod 10 in
    (* If the frequency is greater than the unit digit, return false *)
    if freq > unit_digit then false
    (* Otherwise, recursively check the remaining digits *)
    else validate (modified_n / 10)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)

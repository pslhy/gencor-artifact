let rec simplify (x : string) (n : string) : bool =
    let split_fraction (fraction : string) : int * int =
        let data = String.split_on_char '/' fraction in
        (int_of_string data.(0), int_of_string data.(1)) in
    let (numerator_x, denominator_x) = split_fraction x in
    let (numerator_n, denominator_n) = split_fraction n in
    numerator_x * denominator_n = numerator_n * denominator_x


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Your task is to implement a function that will simplify the expression *)
(*     x * n. The function returns true if x * n evaluates to a whole number and false *)
(*     otherwise. Both x and n, are string representation of a fraction, and have the following format, *)
(*     <numerator>/<denominator> where both numerator and denominator are positive whole numbers. *)
(*     You can assume that x, and n are valid fractions, and do not have zero as denominator. *)
(*     >>> simplify "1/5" "5/1" *)
(*     true *)
(*     >>> simplify "1/6" "2/1" *)
(*     false *)
(*     >>> simplify "7/10" "10/2" *)
(*     false *)

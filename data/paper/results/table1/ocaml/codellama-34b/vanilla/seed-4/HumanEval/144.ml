let rec simplify (x : string) (n : string) : bool = 
    let (num1, num2) = getNums (x, n) in
    if num1 = num2 * 2 then true 
    else if num2 = num1 * 2 then true 
    else if num1 < num2 then simplify (x, n) 
    else if num2 < num1 then simplify (n, x) 
    else false

let getNums (pair1 : string * string) = 
    let (num1, num2) = pair1 in
    (Float.int_of_string (fst (Str.split (num1, "/") 0)), 
     Float.int_of_string (fst (Str.split (num2, "/") 0)))


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

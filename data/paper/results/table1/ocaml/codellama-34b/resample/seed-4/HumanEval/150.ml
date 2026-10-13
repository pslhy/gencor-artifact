(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     A simple program which should return the value of x if n is *)
(*     a prime number and should return the value of y otherwise. *)
(*     Examples: *)
(*     >>> x_or_y 7 34 12 *)
(*     34 *)
(*     >>> x_or_y 15 8 5 *)
(*     5 *)
let rec x_or_y (n : int) (x : int) (y : int) : int = 
    (* base case: if n is a prime number *)
    let is_prime (n : int) : bool = 
        (* test for divisibility by all numbers between 2 and the square root of n *)
        let rec is_divisible (m : int) : bool = 
            m * m <= n && (n mod m <> 0 || is_divisible (m + 1)) in
        n > 1 && not (is_divisible 2) in
    if is_prime n then x else y


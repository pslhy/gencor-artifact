
let rec is_not_prime (n : int) : bool = 
    (* base case: 1 and 0 are neither prime nor composite numbers *)
    if n < 2 then false 
    (* test for divisibility by all numbers between 2 and the square root of n *)
    else if List.mem n @@ List.map (fun x -> x * x) @@ List.filter (fun x -> n mod x = 0) [2..(int_of_float @@ sqrt @@ float_of_int n)]
      then false
    else true

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to identify non-prime numbers. *)

let rec is_not_prime (n : int) : bool = 
    (* Check if n is less than or equal to 1 *)
    if n <= 1 then false
    (* Check if n is greater than 1 and if it has more than 1 divisor *)
    else if n > 1 && has_more_than_one_divisor n then true
    (* If the square root of n is less than or equal to 1, then it is not prime *)
    else if Int.sqrt n <= 1 then false
    (* If none of the above conditions are met, then the number is prime *)
    else true

(* Function to check if an integer has more than one divisor *)
let has_more_than_one_divisor (n : int) : bool = 
    (* Initialize a counter for divisors *)
    let counter = ref 0
    (* Check all divisors of n *)
    for d = 2 to Int.floor (Int.sqrt (float n)) do 
        if n mod d = 0 then counter := !counter + 1
    done;
    (* If the number of divisors is greater than 2, then the number has more than one divisor *)
    !counter > 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to identify non-prime numbers. *)

let rec is_multiply_prime (a : int) : bool =
    if a < 2 then false
    else
    let rec divisor_count n cnt d =
        if n = 1 then cnt
        else if n mod d = 0 then divisor_count (n / d) (cnt + 1) d
        else divisor_count n cnt (d + 1)
    in
    let rec prime_divisors n d =
        if n = 1 then []
        else if n mod d = 0 then d :: prime_divisors (n / d) d
        else prime_divisors n (d + 1)
    in
    let divs = prime_divisors a 2 in
    let counts = List.map (divisor_count a 0) divs in
    List.for_all (fun n -> n <= 1) counts ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns true if the given number is the multiplication of 3 prime numbers *)
(*     and false otherwise. *)
(*     Knowing that (a) is less then 100. *)
(*     Example: *)
(*     >>> is_multiply_prime 30 *)
(*     true *)
(*     30 = 2 * 3 * 5 *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return the largest prime factor of n. Assume n > 1 and is not a prime. *)
(*     >>> largest_prime_factor 13195 *)
(*     29 *)
(*     >>> largest_prime_factor 2048 *)
(*     2 *)
let rec largest_prime_factor (n : int) : int =
    let rec is_prime (m : int) : bool =
        if m < 2 then false
        else let rec loop (i : int) : bool =
            if i >= m then true
            else if m mod i = 0 then false
            else loop (i + 1)
         in loop 2
    in let rec loop (i : int) : int =
        if is_prime i then i
        else if n mod i = 0 then loop (i + 1)
        else largest_prime_factor (n / i)
 in loop 2


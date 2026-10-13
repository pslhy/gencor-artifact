
let rec divisor (n : int) : int = 
    if n = 1 then
        0
    else if n mod n = 0 then
        1 + divisor(n / n)
    else
        divisor(n / n)

let () = 
    print_endline(string_of_int (divisor 12))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of divisors of a given integer. *)

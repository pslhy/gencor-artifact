(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return list of prime factors of given integer in the order from smallest to largest. *)
(*     Each of the factors should be listed number of times corresponding to how many times it appeares in factorization. *)
(*     Input number should be equal to the product of all factors *)
(*     >>> factorize 8 *)
(*     [2; 2; 2] *)
(*     >>> factorize 25 *)
(*     [5; 5] *)
(*     >>> factorize 70 *)
(*     [2; 5; 7] *)
let rec factorize (n : int) : int list =
    if n = 1 then []
    else if n mod 2 = 0 then 2 :: factorize (n / 2)
    else
        let max_factor = int_of_float (sqrt (float_of_int n)) in
        let rec loop (i : int) : int list =
            if i <= max_factor then
                if n mod i = 0 then i :: loop (i + 1)
                else loop (i + 1)
            else []
        in
        loop 3


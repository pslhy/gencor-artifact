let rec factorize (n : int) : int list =
    if n = 1 then
        []
    else
        let factor, divisors = get_largest_factor n
        factor :: factorize (n / divisors)

and get_largest_factor (n : int) : int * int =
    let rec loop (i : int) =
        if i = n then
            (i, 1)
        elif n mod i = 0 then
            (i, n / i)
        else
            loop (i + 1)
    in loop 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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

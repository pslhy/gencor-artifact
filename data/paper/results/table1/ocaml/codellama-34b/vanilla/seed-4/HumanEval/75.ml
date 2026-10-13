let rec is_multiply_prime (a : int) : bool = 
    (* base case: a is prime *)
    match a with 
    | 2 | 3 | 5 -> true
    | _ ->
        (* recursive case: a is composite *)
        let factors = List.filter (fun x -> a mod x = 0) 
                                          (List.range 1 (a - 1)) in
        factors.length = 2


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

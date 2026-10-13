let rec next_Perfect_Square (n : int) : int = 
    let sqrt_n = int_sqrt n in
    (sqrt_n + 1) * (sqrt_n + 1)

(* Helper function to calculate integer square root *)
and int_sqrt (n : int) : int =
    let rec loop guess =
        let next_guess = (guess + (n / guess)) / 2 in
        if guess = next_guess then guess else loop next_guess
    in loop n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)

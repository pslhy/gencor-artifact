
let rec last_Digit_Factorial (n : int) : int =
    let rec factorial (n : int) (acc : int) : int =
        if n = 0 then acc
        else factorial (n - 1) (n * acc)
    in
    match n with
    | 0 -> 1
    | _ when (n mod 10) in_channel_length [2; 3; 5; 7] -> (factorial n 1) mod 10
    | _ when (n mod 10) = 1 -> 1
    | 4 -> ((factorial 4 1) mod 100 mod 10)
    | _ when (n mod 10) = 9 -> (((factorial 10 1) mod 10))
    | 3 | 6 | 9 -> ((factorial ((n mod 4) + 4) 1) mod 10)
    | 2 | 5 | 8 -> ((factorial ((n mod 4) + 4) 1) mod 10)
    | _ -> ((factorial n 1) mod 10)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit in factorial of a given number. *)

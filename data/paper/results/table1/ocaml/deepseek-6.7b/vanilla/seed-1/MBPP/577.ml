let rec last_Digit_Factorial (n : int) : int =
    let rec factorial (n : int) (acc : int) : int =
        if n = 0 then acc
        else factorial (n - 1) (n * acc)
    in
    match n with
    | 0 -> 1
    | _ when (n mod 10) in [2; 5; 6] -> (factorial n 1) mod 10
    | _ when (n mod 10) = 8 -> if (n mod 4 = 0) then 6 else if (n mod 4 = 1) then 8 else if (n mod 4 = 2) then 4 else 2
    | _ -> factorial n 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit in factorial of a given number. *)

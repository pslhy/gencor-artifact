let rec last_Digit_Factorial (n : int) : int = 
    let rec factorial (n : int) : int = 
        if n <= 1 then 1 else n * factorial (n - 1)
    in 
    let rec last_digit (num : int) : int = 
        match num with
        | 0 | 1 | 2 | 6 | 4 -> num
        | 3 | 9 -> 9
        | 7 -> 3
        | 5 -> 5
        | _ -> failwith "Invalid input"
    in
    last_digit (factorial n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit in factorial of a given number. *)

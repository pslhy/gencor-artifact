(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
let rec sum_div (number : int) : int = 
    (* base case: if number is 0 or 1, return 1 *)
    if number <= 1 then 1
    (* rec case: factorize the number using the prime factorization algorithm *)
    let rec factorize (n : int) : int list =
        let rec find_divisor (n : int) : int = 
            if n mod 2 = 0 then 2
            else if n mod 3 = 0 then 3
            else if n mod 5 = 0 then 5
            else find_divisor (n + 1)
        in
        if n <= 1 then []
        else find_divisor n :: factorize (n / find_divisor n)
    in
    let divisors = factorize number in
    List.fold_left (fun acc x -> acc + x) 0 divisors

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_div (number : int) : int =
    (* base case: if number is 0 or 1, return 1 *)
    if number <= 1 then 1
    (* rec case: factorize the number using the prime factorization algorithm *)
    else
        let rec factorize (n : int) : int list =
            let rec find_divisor (n : int) : int =
                if n mod 2 = 0 then 2
                else if n mod 3 = 0 then 3
                else if n mod 5 = 0 then 5
                else find_divisor (n + 1)
            in
            if n <= 1 then []
            else find_divisor n :: factorize (n / find_divisor n)
        in
        let divisors = factorize number in
        List.fold_left (fun acc x -> acc + x) 0 divisors


let rec armstrong_number (number : int) : bool = 
    let digits = 
        let rec digits_list (n : int) : int list = 
            if n = 0 then 
                [] 
            else 
                n mod 10 :: digits_list (n / 10) in
        digits_list number in
    let power = List.length digits in
    let rec sum (digits : int list) : int = 
        match digits with 
        | [] -> 0 
        | x :: xs -> x ** power + sum xs in
    sum digits = number


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)

let rec sum_digits (n : int) : int =
    let rec aux (n : int) (acc : int) : int =
        if n = 0 then
            acc
        else
            let digit = n mod 10 in
            aux (n / 10) (acc + digit) in
    aux n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the sum of the digits of a non-negative integer. *)

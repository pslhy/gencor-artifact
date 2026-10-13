(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
let rec are_equivalent (num1 : int) (num2 : int) : bool =
    let divisors num = 
        let rec loop n acc =
            if n = 1 then 
                acc
            else if n mod 2 = 0 then 
                loop (n / 2) (acc @ [n; n / 2])
            else 
                loop (3 * n + 1) (acc @ [n])
        in
        loop num []
    in
    let divisors1 = divisors num1 in
    let divisors2 = divisors num2 in
    divisors1 = divisors2


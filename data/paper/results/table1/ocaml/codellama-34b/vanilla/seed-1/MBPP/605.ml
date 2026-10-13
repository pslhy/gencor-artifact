let rec prime_num (num : int) : bool =
    let rec aux num dividers =
        match dividers with
        | [] -> true
        | x::xs -> if num mod x = 0 then false else aux num xs
    in
    aux num [2;3;5;7;11;13]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given integer is a prime number. *)

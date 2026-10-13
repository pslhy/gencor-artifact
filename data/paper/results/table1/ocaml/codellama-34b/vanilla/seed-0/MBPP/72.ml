let rec dif_Square (n : int) : bool =
    if n < 0 then false
    else if n = 0 then true
    else if n = 1 then false
    else if n mod 2 = 0 then
        let rec aux (k : int) : bool =
            if k * k > n then false
            else if k * k = n then true
            else aux (k + 1)
        in aux 1
    else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)

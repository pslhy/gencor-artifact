let rec dif_Square (n : int) : bool =
    let rec aux x y =
        if x = 0 then true
        else if x > 0 then
            let z = y - x in
            if z = n then true
            else if z < n then aux x (y - z)
            else aux x (y + z)
        else false
    in
    aux


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)

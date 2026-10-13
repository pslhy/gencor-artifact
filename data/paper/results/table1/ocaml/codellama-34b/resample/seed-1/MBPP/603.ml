(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
let rec get_ludic (n : int) : int list =
    let rec aux x y =
        if x <= n then
            if x = y then
                x :: aux (y + 1) (y + 2)
            else
                aux x (y + 1)
        else
            []
    in aux 1 2;;


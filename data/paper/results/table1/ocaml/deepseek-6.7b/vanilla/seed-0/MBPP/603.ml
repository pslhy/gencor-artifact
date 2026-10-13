let rec get_ludic (n : int) : int list =
    if n < 2 then []
    else
    let rec lucid_aux current power =
        if power > n then []
        else power :: lucid_aux (current*2) (power*2)
    in 1 :: lucid_aux 2 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)

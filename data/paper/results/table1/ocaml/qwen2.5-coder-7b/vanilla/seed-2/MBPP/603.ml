let rec get_ludic (n : int) : int list = 
    let rec find_ludic_numbers lst k = 
        match lst with
        | [] -> []
        | x::xs -> x :: find_ludic_numbers (List.filter (fun y -> (y mod x <> 0)) xs) (k + 1)
    in
    find_ludic_numbers (List.init n (fun i -> i + 1)) 1

let ludic_numbers_up_to (max : int) : int list = 
    get_ludic max


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)

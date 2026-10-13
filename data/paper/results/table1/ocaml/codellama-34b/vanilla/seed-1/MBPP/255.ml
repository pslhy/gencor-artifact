let rec combinations_colors (l : string list) (n : int) : string list list =
    let rec aux l n acc =
        match l with
        | [] -> [ acc ]
        | h :: t -> 
            (aux t n (acc @ h) @
            (aux t (n - 1) (acc @ [ h ]) @
            (aux t (n - 2) (acc @ [ h; h ]) @
            (aux t (n - 3) (acc @ [ h; h; h ]))))
    in
    aux l n []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a list and length n, and generates all combinations (with repetition) of the elements of the list and returns a list with a list for each combination. *)

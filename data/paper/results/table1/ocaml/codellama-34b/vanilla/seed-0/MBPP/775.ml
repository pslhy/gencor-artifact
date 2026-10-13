let rec odd_position (nums : int list) : bool =
    match nums with
    | [] -> true
    | h :: t -> 
        if (t = []) then
            (h mod 2 = 1)
        else
            (h mod 2 = 1) && (odd_position (t))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every odd index contains odd numbers of a given list. *)

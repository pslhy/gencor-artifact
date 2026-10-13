let rec get_equal (input : int list list) : bool = 
    let rec recursion lst result = 
        match lst with
        | [] -> result
        | (h::t) -> recursion t (if List.length h = result then result else -1)
    in 
    (match input with 
    | [] -> true
    | h::t -> recursion t (List.length h)
    );;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find whether all the given lists have equal length or not. *)

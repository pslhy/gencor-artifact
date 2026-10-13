let rec is_woodall (x : int) : bool = 
    if x <= 0 then false
    else 
        let rec helper (n : int) (power : int) : bool =
            if n = x then true
            else if n * 2 + 1 > x then false
            else helper (n * 2 + 1) (power + 1)
        in helper 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given number is woodball or not. *)

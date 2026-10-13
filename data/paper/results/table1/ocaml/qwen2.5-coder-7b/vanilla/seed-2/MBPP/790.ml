let rec even_position (nums : int list) : bool = 
    let rec helper lst idx = 
        match lst with
        | [] -> true
        | x :: xs -> 
            if (idx mod 2 = 0) && (x mod 2 <> 0) then false
            else helper xs (idx + 1)
    in helper nums 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every even index contains even numbers of a given list. *)

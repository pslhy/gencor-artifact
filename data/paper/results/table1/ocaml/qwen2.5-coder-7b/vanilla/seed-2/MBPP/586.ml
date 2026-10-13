let rec split_Arr (l : int list) (n : int) : int list = 
    let rec split lst idx acc1 acc2 = 
        match lst with
        | [] -> (acc1, List.rev acc2)
        | x::xs -> 
            if idx = n then 
                (x::acc1, xs)
            else 
                split xs (idx+1) (x::acc1) (x::acc2)
    in
    let (first, second) = split l 0 [] [] in
    second @ first


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)

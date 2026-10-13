let rec pancake_sort (nums : int list) : int list = 
    let rec flip lst k = 
        let rec helper acc lst n = 
            if n = 0 then acc @ lst
            else helper (List.hd lst :: acc) (List.tl lst) (n - 1)
        in helper [] lst k
    in
    let rec select_max lst m = 
        let rec helper acc lst i m = 
            match lst with
            | [] -> (acc, i)
            | h::t -> 
                if h > m then helper h t (h, i + 1)
                else helper acc t (m, i + 1)
        in helper (-1) lst 0 m
    in
    let rec sort lst n = 
        if n = 0 then lst
        else 
            let (mx, idx) = select_max lst n in
            let lst' = flip (flip lst idx) n in
            sort lst' (n - 1)
    in sort nums (List.length nums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)

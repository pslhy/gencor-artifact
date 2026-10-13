let rec max_run_uppercase (test_str : string) : int = 
    let rec find_run idx count max_run = 
        if idx >= String.length test_str then 
            if count > max_run then count else max_run
        else
            let char = test_str.[idx] in
            if char >= 'A' && char <= 'Z' then
                find_run (idx + 1) (count + 1) max_run
            else
                find_run (idx + 1) 0 (if count > max_run then count else max_run)
    in find_run 0 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)

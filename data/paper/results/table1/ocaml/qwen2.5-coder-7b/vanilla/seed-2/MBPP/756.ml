let rec text_match_zero_one (text : string) : bool = 
    let rec loop i = 
        if i >= String.length text then 
            false
        else if text.[i] = 'a' then 
            let rec count_bs j = 
                if j >= String.length text || text.[j] <> 'b' then 
                    i = j
                else 
                    count_bs (j + 1)
            in
            count_bs (i + 1)
        else 
            loop (i + 1)
    in
    loop 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)

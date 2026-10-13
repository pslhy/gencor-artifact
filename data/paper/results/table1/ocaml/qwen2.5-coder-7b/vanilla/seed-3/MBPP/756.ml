let rec text_match_zero_one (text : string) : bool = 
    let rec helper (index : int) : bool =
        if index >= String.length text then
            false
        else if text.[index] = 'a' then
            let rec check_b (i : int) : bool =
                if i >= String.length text then
                    true
                else if text.[i] = 'b' then
                    check_b (i + 1)
                else
                    false
            in check_b (index + 1)
        else
            helper (index + 1)
    in helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)

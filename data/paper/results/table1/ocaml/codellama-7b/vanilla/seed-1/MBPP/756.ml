let rec text_match_zero_one (text : string) : bool =
    let rec aux (i : int) : bool =
        if i < 0 then
            true
        else
            match text.[i] with
            | 'a' -> aux (i - 1)
            | 'b' -> aux (i - 1)
            | _ -> false
    in
    aux (String.length text - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)

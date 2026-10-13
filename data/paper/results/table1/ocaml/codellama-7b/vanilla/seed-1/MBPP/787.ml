let rec text_match_three (text : string) : bool =
    let rec aux (i : int) : bool =
        if i < 3 then
            let sub_text = String.sub text (i + 1) 3 in
            if sub_text = "bbb" then
                true
            else
                aux (i + 1)
        else
            false
    in
    aux 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by three 'b'. *)

let rec text_starta_endb (text : string) : bool =
    let rec aux i =
        if i >= String.length text then
            false
        else
            let sub = String.sub text i (String.length text - i) in
            if sub = "a" then
                true
            else
                aux (i + 1)
    in
    aux 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)

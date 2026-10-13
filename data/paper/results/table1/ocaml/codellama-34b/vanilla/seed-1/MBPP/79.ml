let rec word_len (s : string) : bool =
    let rec aux (s : string) (acc : int) : bool =
        if acc > 0 then
            false
        else if s == "" then
            true
        else
            aux (String.sub s 1 ((String.length s) - 1)) (acc + 1)
    in
    aux s 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the length of the word is odd or not. *)

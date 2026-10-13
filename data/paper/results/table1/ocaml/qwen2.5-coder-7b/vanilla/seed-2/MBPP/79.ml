let rec word_len (s : string) : bool = 
    let count_chars chars idx = 
        if idx = String.length s then
            chars
        else
            count_chars (chars + 1) (idx + 1)
    in
    (count_chars 0 0 land 1) = 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the length of the word is odd or not. *)

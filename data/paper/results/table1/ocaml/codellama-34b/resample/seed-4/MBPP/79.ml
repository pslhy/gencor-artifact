(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the length of the word is odd or not. *)
let rec word_len (s : string) : bool = 
    (* base case: empty string with length 0 *)
    let rec word_len_helper(s, acc) : bool = 
        match s with
        | [] -> acc mod 2 = 0
        | hd::tl -> word_len_helper(tl, acc + 1)
    in 
    word_len_helper(s, 0)


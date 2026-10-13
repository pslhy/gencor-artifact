let rec is_nonagonal (n : int) : int = 
    let rec find_nonagonal (i : int) (k : int) : int =
        if (i * (7 * i - 5)) / 2 = k then i else find_nonagonal (i + 1) k
    in
    find_nonagonal 1 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth nonagonal number. *)

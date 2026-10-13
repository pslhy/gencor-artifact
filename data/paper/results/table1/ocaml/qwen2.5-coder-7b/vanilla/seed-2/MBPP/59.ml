let rec is_octagonal (n : int) : int = 
    let rec find_octagonal (i : int) (k : int) : int =
        if (8 * i * i - 7 * i) / 2 = k then k
        else find_octagonal (i + 1) k
    in
    find_octagonal 1 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth octagonal number. *)

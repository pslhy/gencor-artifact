let rec is_num_decagonal (n : int) : int =
    let rec aux (acc : int) (exp : int) (base : int) : int =
        if acc < n then aux (acc + exp * base) (exp + 1) (base + 1)
        else acc
    in
    aux 0 1 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth decagonal number. *)

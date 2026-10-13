let rec find_even_pair (a : int list) : int = 
    let count_even_xor (acc, rem) x = 
        let count = List.length (List.filter (fun y -> (x lxor y) land 1 = 0) rem) in
        (acc + count, x :: rem) in
    fst (List.fold_left count_even_xor (0, []) a)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that counts the number of pairs of integers in a list that xor to an even number. *)

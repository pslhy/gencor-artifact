let rec count_bidirectional (test_list :  (int * int) list) : int = 
    let count_helper pairs (acc : int) = 
        match pairs with
        | [] -> acc
        | (a, b) :: rest -> 
            if List.mem (b, a) rest then count_helper rest (acc + 1) else count_helper rest acc
    in count_helper test_list 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)

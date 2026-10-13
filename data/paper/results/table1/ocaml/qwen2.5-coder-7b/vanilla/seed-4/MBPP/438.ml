let rec count_bidirectional (test_list :  (int * int) list) : int = 
    let rec helper acc lst = 
        match lst with 
            | [] -> acc 
            | (x, y) :: xs -> 
                if List.mem (y, x) lst then 
                    helper (acc + 1) xs 
                else 
                    helper acc xs 
    in 
    helper 0 test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)

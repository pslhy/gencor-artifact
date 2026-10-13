let rec extract_freq (test_list :  (int * int) list) : int = 
    let rec find_unique lst count unique_list = 
        match lst with 
            [] -> count 
            | (x,y)::tl -> 
                if not (List.mem (x,y) unique_list) then 
                    find_unique tl (count + 1) ((x,y)::unique_list) 
                else 
                    find_unique tl count unique_list 
    in 
    find_unique test_list 0 []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)

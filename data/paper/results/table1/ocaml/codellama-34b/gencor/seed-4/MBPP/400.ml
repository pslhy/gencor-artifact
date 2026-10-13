
let rec extract_freq (test_list :  (int * int) list) : int = 
    let helper (test_list : (int * int) list) (acc : int) : int =
        match test_list with 
        
        
        | [] -> acc 
        | (a, b) :: xs -> if List.mem (b, a) xs then acc + 1 else acc 
    in helper test_list 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)

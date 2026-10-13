(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
let rec extract_freq (test_list :  (int * int) list) : int = 
    let helper (test_list : (int * int) list) (acc : int) : int =
        match test_list with 
        
        
        | [] -> acc 
        | (a, b) :: xs -> if List.mem (b, a) xs then helper xs acc + 1
                          else helper xs acc 
    
    
    in helper test_list 0 
    
 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:54: Unbound value "helper" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec extract_freq (test_list :  (int * int) list) : int = 
    helper test_list 0

and helper (test_list : (int * int) list) (acc : int) : int =
    match test_list with 
    | [] -> acc 
    | (a, b) :: xs -> if List.mem (b, a) xs then helper xs (acc + 1)
                      else helper xs acc



let rec odd_position (nums : int list) : bool = 
    (* base case: empty list with no odd positions *)
    let rec odd_position nums = 
        match nums with
        | [] -> true
        | [x] -> x mod 2 = 1
        | hd :: tl -> hd mod 2 = 1 && odd_position tl
    
    (* check whether every odd index contains odd numbers *)
    in let rec check_even_position nums = 
        match nums with
        | [] -> true
        | [x] -> x mod 2 = 0
        | hd :: tl -> hd mod 2 = 0 && check_even_position tl
    
    (* check whether every odd index contains odd numbers and even index contains even numbers in a list *)
    in let rec check_index_position nums = 
        match nums with
        | [] -> true
        | [x] -> x mod 2 = if odd_position nums then 1 else 0
        | hd :: tl -> hd mod 2 = if odd_position nums then 1 else 0 && check_index_position tl
    
    (* insert truth values *)
    in if nums = [] then true else check_index_position nums

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every odd index contains odd numbers of a given list. *)

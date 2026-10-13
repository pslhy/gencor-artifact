let rec find_Max_Num (arr : int list) : int = 
    match arr with 
    | head :: tail -> 
        (match tail with 
        | [] -> head 
        | _ -> 
            let tail_Max_Num = find_Max_Num tail in 
            if head < tail_Max_Num then tail_Max_Num else head) 
    | _ -> -1 
    
    
let array = [ 4; 5; 1; 6; 8; 3; 9; 7; 2 ] 
let result = find_Max_Num array 
printf "%d" result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)

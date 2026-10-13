let rec find_Max_Num (arr : int list) : int = 
    let rec find_Max (arr : int list) (max_val : int) : int = 
        match arr with 
        | [] -> max_val 
        | x :: xs -> if x > max_val then find_Max xs x else find_Max xs max_val 
    in 
    let max_val = find_Max arr 0 in 
    let rec form_Max_Num (arr : int list) (max_val : int) : int = 
        match arr with 
        | [] -> 0 
        | x :: xs when x = max_val -> max_val * (10 ^ (List.length xs)) + form_Max_Num xs max_val 
        | _ :: xs -> form_Max_Num xs max_val 
    in 
    form_Max_Num arr max_val


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)

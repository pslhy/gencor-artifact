let rec find_Max_Num (arr : int list) : int = 
    let rec sort arr = 
        match arr with 
        | [] -> [] 
        | h::t -> List.sort compare t @ [h] in 
    let sortedArr = sort arr in 
    let rec buildNum lst = 
        match lst with 
        | [] -> 0 
        | [x] -> x 
        | h::t -> h * 10 + buildNum t in 
    buildNum (List.rev sortedArr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)

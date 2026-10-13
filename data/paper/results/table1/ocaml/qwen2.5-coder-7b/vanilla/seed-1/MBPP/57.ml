let rec find_Max_Num (arr : int list) : int = 
  let rec sort (lst: int list) : int list = 
    match lst with 
    | [] -> []
    | x::xs -> insert x (sort xs)
  and insert (x : int) (lst : int list) : int list =
    match lst with
    | [] -> [x]
    | y::ys ->
        if x >= y then x :: y :: ys
        else y :: insert x ys
  in 
  let sorted_arr = sort arr in
  let rec list_to_num (lst : int list) : int = 
    match lst with 
    | [] -> 0
    | x::xs -> x * 10^(List.length xs) + list_to_num xs
  in 
  list_to_num sorted_arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)

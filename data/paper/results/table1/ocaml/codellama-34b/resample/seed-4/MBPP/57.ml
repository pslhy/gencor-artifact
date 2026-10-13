(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
let rec find_Max_Num (arr : int list) : int = 
    (* base case: If list with only one element *)
    let rec sort (arr : int list) : int list = 
        (* base case: If list with only one element *)
        match arr with
        | [] -> []
        | [x] -> [x] 
        (* recursion case: sort the List and compare the elements to find the largest number *)
        | x :: rest -> 
            let sorted_rest = sort rest in
            let largest_num = find_Max_Num sorted_rest in
            if x > largest_num then x else largest_num
    in
    arr |> List.hd


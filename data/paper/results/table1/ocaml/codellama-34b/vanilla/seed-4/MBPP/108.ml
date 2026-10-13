let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list = 
    let rec merge_list num1 num2 =
        match num1, num2 with
        | [], num2 -> num2
        | num1, [] -> num1
        | h1 :: t1, h2 :: t2 -> 
            if h1 <= h2 then h1 :: merge_list t1 num2 
            else h2 :: merge_list num1 t2 
    in 
    let merge_list_tmp = merge_list num1 num2 in
    merge_list merge_list_tmp num3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)

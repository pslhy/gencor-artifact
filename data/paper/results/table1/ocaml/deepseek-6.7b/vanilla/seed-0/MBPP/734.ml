let rec sum_Of_Subarray_Prod (arr : int list) : int =
    let rec prod (array: int list) : int =
        match array with 
        | [] -> 1
        | h :: t -> h * (prod t)
    in

    let rec sublists (array: int list) : int list list =
        match array with
        | [] -> []
        | h :: t -> []::(List.map (fun xs -> h::xs) (sublists t))
    in
  
    let rec map_and_sum (f: int list -> int) (array: int list list) : int =
      match array with
      | [] -> 0
      | h :: t -> (f h) + (map_and_sum f t)
    in

    map_and_sum prod (sublists arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)

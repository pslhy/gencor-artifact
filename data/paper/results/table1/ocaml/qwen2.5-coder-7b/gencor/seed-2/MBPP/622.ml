
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let rec find_kth a b k : int = 
        if List.length a = 0 then List.nth b (k - 1)
        else if List.length b = 0 then List.nth a (k - 1)
        else if k = 1 then min (List.hd a) (List.hd b)
        else 
            let mid_a = min (n / 2) (List.length a)
            and mid_b = min (n / 2) (List.length b) in
            if List.nth a (mid_a - 1) < List.nth b (mid_b - 1) 
            then find_kth (List.tl a) b (k - mid_a)
            else find_kth a (List.tl b) (k - mid_b)
    in
    if (n mod 2) = 0 then 
        (float_of_int(find_kth arr1 arr2 n / 2) +. float_of_int(find_kth arr1 arr2 (n / 2 + 1))) /. 2.0
    else 
        float_of_int(find_kth arr1 arr2 (n / 2 + 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)

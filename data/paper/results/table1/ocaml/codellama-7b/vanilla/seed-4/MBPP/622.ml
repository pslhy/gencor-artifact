let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let (median1, _) = get_median_and_idx (arr1 : int list) (arr2 : int list) in 
    let (median2, _) = get_median_and_idx (arr2 : int list) (arr1 : int list) in 
    if median1 < median2 then median1 else median2    

let rec get_median_and_idx (arr1 : int list) (arr2 : int list) : int * int = 
    match (arr1, arr2) with 
    | (head1::tail1, head2::tail2) -> 
        if head1 > head2 then get_median_and_idx (arr1)
        (tail2 + (head1 :: tail1), tail2)
    | (head1::tail1, nil) -> if head1 > 0 then head1, 0 
                               else failwith "Lists are not of same length"     
    | (nil, head2::tail2) -> if head2 > 0 then head2, arr2 at
                               else failwith "Lists are not of same length"
    | (nil, nil) -> failwith "Lists are empty"
    
let (median, _) = get_median_and_idx (arr1 : int list) (arr2 : int list) in 
median vence


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)

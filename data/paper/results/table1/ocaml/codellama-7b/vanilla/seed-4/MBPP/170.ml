let rec sum_range_list (list1 : int list) (m : int) (n : int) : int = 
    match (m, n) with
    | _ when (m < 0 || n < 0 || m > n) -> failwith "Invalid indices"
    | _ when (m = n) -> list1.[m]
    | _ -> list1.[m] + sum_range_list list1 (m + 1) n
 
let sum_range_list2 (list2 : int list) (m : int) (n : int) : int = 
    let acc = ref 0 in
    let rec loop i = 
        match i with
        | i when i < m -> acc := !acc + list2.[i]; loop (i + 1)
        | i when i = m -> acc := !acc + list2.[i]; loop (i + 1)
        | i when i > n -> !acc
    in loop 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of numbers in a list within a range specified by two indices. *)

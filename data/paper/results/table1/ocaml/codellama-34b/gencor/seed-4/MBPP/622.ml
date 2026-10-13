
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
    if n <= 0 then
        failwith "The size of the two lists should be at least 1"
    else if n = 1 then
        0.5 *. (float_of_int (List.hd arr1) +. float_of_int (List.hd arr2))
    else
        let mid = n / 2 in
        let (left1, right1) = List.split arr1 mid in
        let (left2, right2) = List.split arr2 mid in
        if (List.hd left1) <= (List.hd left2) then
            get_median arr1 right2 (n - mid)
        else
            get_median arr2 right1 (n - mid)

let median (arr1 : int list) (arr2 : int list) : float =
    let n = List.length arr1 in
    let m = List.length arr2 in
    if n <> m then
        failwith "The two lists should have the same size"
    else
        get_median arr1 arr2 n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
    match (arr1, arr2) with
    | [], _ -> failwith "Invalid input"
    | _, [] -> failwith "Invalid input"
    | h1 :: t1, h2 :: t2 ->
        if k = 1 then
            h1
        else if k = length arr1 + length arr2 then
            h2
        else
            let (q1, r1) = k / length arr1 in
            let (q2, r2) = k / length arr2 in
            if q1 < q2 then
                find_kth t1 arr2 r1
            else
                find_kth t2 arr1 r2

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:21: Unbound value "length" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
    match (arr1, arr2) with
    | [], _ -> failwith "Invalid input"
    | _, [] -> failwith "Invalid input"
    | h1 :: t1, h2 :: t2 ->
        if k = 1 then
            h1
        else if k = List.length arr1 + List.length arr2 then
            h2
        else
            let (q1, r1) = k / List.length arr1 in
            let (q2, r2) = k / List.length arr2 in
            if q1 < q2 then
                find_kth t1 arr2 r1
            else
                find_kth t2 arr1 r2


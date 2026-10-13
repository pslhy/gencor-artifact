(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list = 
    (* special case for lists with less than n elements *)
    let rec sort (xs : int list) : int list = 
        match xs with
        | [] -> []
        | x :: xs ->
            let smaller = List.filter (fun y -> y <= x) xs in
            let larger = List.filter (fun y -> y > x) xs in
            smaller @ (x :: sort larger) in
    let rec heap = List.sort_uniq compare (List.head nums) :: heap_queue_largest (List.tl nums) (n - 1) in
    if n = 0 then [] else heap

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:44: Unbound value "List.head" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list =
    (* special case for lists with less than n elements *)
    let rec sort xs =
        match xs with
        | [] -> []
        | x :: xs ->
            let smaller = List.filter (fun y -> y <= x) xs in
            let larger = List.filter (fun y -> y > x) xs in
            smaller @ (x :: sort larger) in
    let nums_sorted = sort nums in
    let rec at_least n xs =
        match n, xs with
        | 0, _ -> true
        | _, [] -> false
        | k, x :: xs -> at_least (k - 1) xs in
    let rec at_most n xs =
        match n, xs with
        | 0, _ -> true
        | _, [] -> false
        | k, x :: xs -> at_most (k - 1) xs in
    let rec take n xs =
        match n, xs with
        | 0, _ -> []
        | _, [] -> []
        | k, x :: xs -> x :: take (k - 1) xs in
    let largest = take n nums_sorted in
    largest


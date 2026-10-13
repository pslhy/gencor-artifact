(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of non-repeated elements in a given list. *)
let rec find_sum (arr : int list) : int =
    match arr with
    | [] -> 0
    | (x::xs) ->
        let (non_repeat_xs, is_repeated) = Utils.remove_duplicates (arr, x) in
        is_repeated + find_sum non_repeat_xs in
find_sum [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:44: Unbound module "Utils" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_sum (arr : int list) : int =
    match arr with
    | [] -> 0
    | (x::xs) ->
        let non_repeat_xs = List.filter (fun y -> y <> x) xs in
        let is_repeated = match non_repeat_xs with
                          | [] -> true
                          | _ -> false in
        is_repeated + find_sum non_repeat_xs

let test_find_sum : int list -> int =
    find_sum([1; 2; 3; 4; 5; 6; 7; 8; 9; 10])


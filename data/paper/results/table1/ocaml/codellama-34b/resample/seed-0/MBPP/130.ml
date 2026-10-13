(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
let rec max_occurrences (nums : int list) : int =
    match nums with
    | [] -> 0
    | [x] -> 1
    | first :: rest ->
        let rec count_occurrences n = function
            | [] -> n
            | y :: rest_y ->
                if y = first then count_occurrences (n + 1) rest_y
                else count_occurrences n rest_y
        in
        let max_occurrence = count_occurrences 0 nums in
        max_occurrence

let test_max_occurrences () =
    let test_cases = [
        ([], 0);
        ([1], 1);
        ([1; 2; 3; 2; 1], 2);
        ([1; 2; 3; 2; 1; 3], 3);
        ([3; 2; 1; 1; 1; 2], 3)
    ]
    in
    List.for_all (fun (input, expected) ->
        let result = max_occurrences input in
        result = expected
    ) test_cases

let () =
    if test_max_occurrences () then
        print_endline "Test cases passed!"
    else
        print_endline "Failed!"


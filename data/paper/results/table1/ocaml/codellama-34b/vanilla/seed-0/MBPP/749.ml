let rec sort_numeric_strings (nums_str : string list) : int list =
    match nums_str with
    | [] -> []
    | x :: xs ->
        let num = try int_of_string x with Failure _ -> max_int in
        let small_nums = filter_small_nums xs num in
        [num] @ sort_numeric_strings small_nums
        and filter_small_nums : (string list -> int -> string list) = fun xs num ->
            List.fold_left (fun acc x ->
                try
                  if int_of_string (List.hd x) then num then
                    [x]
                  else
                    []
                with Failure _ -> acc) xs in
sort_numerical_strings ["100kc", "3python", "24ss", "5sql", "9compile", "7run"]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given list of strings of numbers numerically. https://www.geeksforgeeks.org/mlthon-sort-numeric-strings-in-a-list/ *)

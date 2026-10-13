(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that accepts a list of strings. *)
(*     The list contains different words. Return the word with maximum number *)
(*     of unique characters. If multiple strings have maximum number of unique *)
(*     characters, return the one which comes first in lexicographical order. *)
(*     >>> find_max ["name"; "of"; "string"] *)
(*     "string" *)
(*     >>> find_max ["name"; "enam"; "game"] *)
(*     "enam" *)
(*     >>> find_max ["aaaaaaa"; "bb"; "cc"] *)
(*     "aaaaaaa" *)
let rec find_max (words : string list) : string =
    match words with
    | [] -> failwith "Empty list"
    | [x] -> x
    | first :: rest ->
        let chars = first |> String.to_list |> List.sort_uniq compare in
        let result = find_max rest in
        if List.length chars > List.length (result |> String.to_list |> List.sort_uniq compare) then first
        else if List.length chars = List.length (result |> String.to_list |> List.sort_uniq compare) then
            if first < result then first else result
        else result

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:30: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
    match words with
    | [] -> failwith "Empty list"
    | [x] -> x
    | first :: rest ->
        let chars = String.to_array first in
        let result = find_max rest in
        if Array.length chars > Array.length (String.to_array result) then first
        else if Array.length chars = Array.length (String.to_array result) then
            if first < result then first else result
        else result
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:21: Unbound value "String.to_array" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
    match words with
    | [] -> failwith "Empty list"
    | [x] -> x
    | first :: rest ->
        let chars = Array.of_list (String.to_list first) in
        let result = find_max rest in
        if Array.length chars > Array.length (Array.of_list (String.to_list result)) then first
        else if Array.length chars = Array.length (Array.of_list (String.to_list result)) then
            if first < result then first else result
        else result

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:36: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
    match words with
    | [] -> failwith "Empty list"
    | [x] -> x
    | first :: rest ->
        let chars = Array.of_list (List.init (String.length first) (fun i -> String.get first i)) in
        let result = find_max rest in
        if Array.length chars > Array.length (Array.of_list (List.init (String.length result) (fun i -> String.get result i))) then first
        else if Array.length chars = Array.length (Array.of_list (List.init (String.length result) (fun i -> String.get result i))) then
            if first < result then first else result
        else result


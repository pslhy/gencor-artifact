(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the element that appears only once in a sorted list. *)
let rec search (arr : int list) : int =
    if List.length arr <= 1 then
        raise (Invalid_argument "List must have at least 2 elements to work")
    else
        let mid = floar ((List.length arr) / 2) in
        let left = List.take mid arr in
        let right = List.skip mid arr in
        if List.length left = List.length right then
            search left
        else 
            search right

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Unbound value "floar" *)
(*     Hint: Did you mean "float" or "floor"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec search (arr : int list) : int =
    if List.length arr <= 1 then
        raise (Invalid_argument "List must have at least 2 elements to work")
    else
        let mid = float ((List.length arr) / 2) in
        let left = List.take mid arr in
        let right = List.skip mid arr in
        if List.length left = List.length right then
            search left
        else 
            search right

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec search (arr : int list) : int =
    match arr with
    | [] -> raise (Invalid_argument "List must have at least 2 elements to work")
    | [x] -> x
    | x :: xs ->
        let mid = float (List.length xs) / 2 in
        if List.length xs = mid then
            search xs
        else
            search (List.take mid xs)


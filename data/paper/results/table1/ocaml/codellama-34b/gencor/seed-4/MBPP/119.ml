
let rec search (arr : int list) : int = 
    (* base case: if list with only one element *)
    let rec search (arr : int list) : int = 
        (* base case: if list with only one element *)
        match arr with
        | [x] -> x
        (* base case: if list with only one element *)
        | [x; y] -> if x = y then x else search (x::[])
        (* recursive case: search for duplicate elements in first half and second half *)
        | x::_::xs -> if x = search (x::[]) then x else search xs
        (* recursive case: search for duplicate elements in first half and second half *)
        | [] -> invalid_arg " search:empty input"
    (* doubly recursive case: first search for duplicate elements in first half and second half and then in the whole list *)
    in let rec recursive_search (arr : int list) : int = 
        match arr with
        | [] -> invalid_arg " recursive_search: empty input"
        | [x] -> x
        | [x; y] -> if x = y then x else search (x::[])
        | x::_::xs -> if x = search (x::[]) then x else search xs
    in let rec find_unique (arr : int list) : int = 
        match arr with
        | [] -> invalid_arg " find_unique: empty input"
        | [x] -> x
        | [x; y] -> if x = y then x else search (x::[])
        | x::_::xs -> if x = search (x::[]) then x else search xs
    in find_unique (recursive_search (arr))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the element that appears only once in a sorted list. *)

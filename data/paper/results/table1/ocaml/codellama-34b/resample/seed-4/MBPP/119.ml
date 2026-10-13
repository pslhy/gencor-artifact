(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the element that appears only once in a sorted list. *)
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
        | [] -> invalidArg "arr" "array must not be empty"
        (* print error message *)
    in
    search (arr @ [])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:17: Unbound value "invalidArg" *)
(*     Hint: Did you mean "invalid_arg"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec search (arr : int list) : int = 
  (* base case: if list with only one element *)
  match arr with
  | [x] -> x
  (* base case: if list with only one element *)
  | [x; y] -> if x = y then x else search (x::[])
  (* recursive case: search for duplicate elements in first half and second half *)
  | x::_::xs -> if x = search (x::[]) then x else search xs
  (* recursive case: search for duplicate elements in first half and second half *)
  | [] -> invalid_arg "arr" "array must not be empty"
  (* print error message *)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last element in a given list. *)
let rec swap_List (newList : int list) : int list = 
    match newList with 
      head :: tail -> 
      (match tail with 
          first :: last :: rev -> 
          ([last] @ rev) :: [head] @ [first])
        | _ -> raise (Failure "List must have at least two elements")) 
    | _ -> raise (Failure "List must have at least two elements")

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:70: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
  match newList with
    [(head :: tail) ->
    {
      match tail with
        (first :: last :: rev) ->
        ([last] @ rev) :: [head] @ [first]
    | _ -> raise (Failure "List must have at least two elements")
    }
  | _ -> raise (Failure "List must have at least two elements")

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:21: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
  match newList with
    [(head :: tail) ->
    {
      match tail with
        (first :: last :: rev) ->
        ([last] @ rev) :: [head] @ [first]
    | _ -> raise (Failure "List must have at least two elements")
    }

  | _ -> raise (Failure "List must have at least two elements")

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:21: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
  match newList with
    | (head :: tail) ->
        (* Swap the first two elements *)
        head :: [last] @ rev :: (head :: first) :: tail)
    | _ -> raise (Failure "List must have at least two elements")


(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:56: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
  match newList with
    | (head :: tail) ->
        (* Swap the first two elements *)
        head :: [last] @ rev :: (head :: first) :: tail
    | _ -> raise (Failure "List must have at least two elements")



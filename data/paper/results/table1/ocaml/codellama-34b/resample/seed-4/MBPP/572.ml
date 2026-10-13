(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to remove duplicate numbers from a given number of lists. *)
let rec two_unique_nums (nums : int list) : int list = 
    match nums with 
      head :: tail -> 
      (match tail with 
          first :: _ -> 
          (* do something *)
          if head = first && hedl = last then
            None 
          else 
            Some (head, first, last)
        | [] -> None) 
      | [] -> None

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:30: Unbound value "hedl" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec two_unique_nums (nums : int list) : int list =
    match nums with
    | head :: tail ->
        (match tail with
        | first :: _ ->
            (* do something *)
            if head = first && head = last then
                None
            else
                Some (head, first, last)
        | [] -> None)
    | [] -> None

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:39: Unbound value "last" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec two_unique_nums (nums : int list) : int list =
    match nums with
    | head :: tail ->
        (match tail with
        | first :: second :: _ ->
            (* do something *)
            if head = first && head = second then
                None
            else
                Some (head, first, second)
        | [] -> None)
    | [] -> None


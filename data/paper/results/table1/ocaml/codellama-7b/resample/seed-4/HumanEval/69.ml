(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a non-empty list of positive integers. Return the greatest integer that is greater than *)
(*     zero, and has a frequency greater than or equal to the value of the integer itself. *)
(*     The frequency of an integer is the number of times it appears in the list. *)
(*     If no such a value exist, return -1. *)
(*     Examples: *)
(*     >>> search [4; 1; 2; 2; 3; 1] *)
(*     2 *)
(*     >>> search [1; 2; 2; 3; 3; 3; 4; 4; 4] *)
(*     3 *)
(*     >>> search [5; 5; 4; 4; 4] *)
(*     (-1) *)
let rec search (lst : int list) : int = 
    (* base case: if the list is empty, there is no such value *)
    if lst = [] then (-1)
    (* recursive case: otherwise, check if there is a value greater than or equal to the head of the list *)
    else
        let head = List.hd lst in
        let tail = List.tl lst in
        if head >= head then search tail
        else (* if the head is less than the current head, check if there is a value greater than or equal to the head *)
            let nth_head = (n - 1) * head in
            let nth_tail = List.take (List.length lst) nth_head in
            search nth_tail

let rec search (lst : int list) : int = 
    (* base case: if the list is empty, there is no such value *)
    if lst = [] then (-1)
    (* recursive case: otherwise, check if there is a value greater than or equal to the head of the list *)
    else
        let head = List.hd lst in
        let tail = List.tl lst in
        if head >= head then search tail
        else (* if the head is less than the current head, check if there is a value greater than or equal to the head *)
            let nth_head = (n - 1) * head in
            let nth_tail = List.take (List.length lst) nth_head in
            search nth_tail

(* example usage: search [4; 1; 2; 2; 3; 1] *)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:29: Unbound value "n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec search (lst : int list) : int =
  match lst with
  | [] -> raise (Failure "List is empty")
  | [x] -> x
  | h :: t ->
    let n = List.length t in
    (if n >= 100 then h + n else h) :: search t

